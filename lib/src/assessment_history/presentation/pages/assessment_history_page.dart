import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tki_app/config/assets/app_size.dart';
import 'package:tki_app/config/locator/injection.dart';
import 'package:tki_app/core/common/widgets/app_scaffold.dart';
import 'package:tki_app/core/extensions/l10n_extension.dart';
import 'package:tki_app/core/helpers/hive_manager.dart';
import 'package:tki_app/core/services/messages/messenger.dart';
import 'package:tki_app/src/assessment_history/data/models/assessment_history.dart';
import 'package:tki_app/src/assessment_history/presentation/bloc/assessment_history_bloc.dart';
import 'package:tki_app/src/assessment_history/presentation/widgets/assessment_history_tile.dart';
import 'package:tki_app/src/assessment_history/presentation/widgets/assessment_history_tile_shimmer.dart';
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart';

@RoutePage()
class AssessmentHistoryPage extends StatelessWidget {
  const AssessmentHistoryPage({super.key});

  static const String tabName = 'list';

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<AssessmentHistoryBloc>();
    return AppScaffold(
      appBar: AppBar(
        title: Text(context.l10n.assessmentHistory),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          padding: const EdgeInsets.all(AppSize.m),
          onPressed: () => context.router.maybePop(),
        ),
        actions: [
          IconButton(
              icon: const Icon(Icons.add),
              padding: const EdgeInsets.all(AppSize.m),
              onPressed: () async {
                final hive = locator<AssessmentHistoryHiveManager>();
                final data =
                    await hive.read<List<String>?>('assessmentHistoryKey') ??
                        [];
                data.add(
                  json.encode(
                    AssessmentHistory(
                      title: "title",
                      name: "name",
                      date: DateTime.now(),
                      collaborating: 10,
                      competing: 10,
                      accommodating: 12,
                      avoiding: 12,
                      compromising: 15,
                      score: 20,
                      questionSet: QuestionSet(
                        imageUrl: null,
                        title: "Pytania tki",
                        language: "pl",
                        questions: [],
                      ),
                    ).toJson(),
                  ),
                );
                hive.write(
                  'assessmentHistoryKey',
                  data,
                );
                if (!context.mounted) return;
                bloc.add(const GetFromMemoryEvent());
              }),
          IconButton(onPressed: () => bloc.add(const GetFromMemoryEvent()), icon: const Icon(Icons.refresh),),
        ],
      ),
      body: BlocConsumer<AssessmentHistoryBloc, AssessmentHistoryState>(
        bloc: bloc,
        listener: (_, state) => state.whenOrNull(
          error: (state, failure) => MessengerManager().showToastFromCode(
            context,
            failure.message,
            failure.description,
            failure.statusCode,
            toastLength: MessengerToastLength.long,
          ),
          success: (previousState, success) =>
              MessengerManager().showToastFromCode(
            context,
            success.message,
            success.description,
            success.statusCode,
            toastLength: MessengerToastLength.short,
          ),
        ),
        builder: (_, state) {
          print(state);
          return state.when(
            initial: () =>
                const _IdleScreen(isLoading: true, assessmentHistoryList: []),
            idle: (isLoading, assessmentHistoryList) => _IdleScreen(
                isLoading: isLoading,
                assessmentHistoryList: assessmentHistoryList),
            error: (previousState, _) =>
                _IdleScreen.fromState(state: previousState),
            success: (previousState, _) =>
                _IdleScreen.fromState(state: previousState),
          );
        },
      ),
    );
  }
}

class _IdleScreen extends StatelessWidget {
  const _IdleScreen({
    required this.isLoading,
    required this.assessmentHistoryList,
  });

  factory _IdleScreen.fromState({
    required IdleState state,
  }) =>
      _IdleScreen(
        isLoading: state.isLoading,
        assessmentHistoryList: state.assessmentHistoryList,
      );

  final bool isLoading;
  final List<AssessmentHistory> assessmentHistoryList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSize.s2),
        child: ListView.builder(
          itemCount:
              isLoading ? AppSize.s4.toInt() : assessmentHistoryList.length,
          itemBuilder: (context, index) => isLoading
              ? const AssessmentHistoryTileShimmer()
              : AssessmentHistoryTile(
                  index: index,
                  assessmentHistory: assessmentHistoryList[index],
                ),
        ),
      ),
    );
  }
}
