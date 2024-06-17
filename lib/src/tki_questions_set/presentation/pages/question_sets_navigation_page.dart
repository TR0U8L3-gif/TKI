import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tki_app/config/locator/injection.dart';
import 'package:tki_app/src/tki_questions_set/presentation/bloc/tki_question_set_bloc.dart';

@RoutePage()
class QuestionSetsNavigationPage extends StatelessWidget implements AutoRouteWrapper {
const QuestionSetsNavigationPage({ super.key });

  static const String routeName = '/questions-set';

    @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<TkiQuestionSetBloc>()
        ..add(const GetAllEvent()),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context){
    return const AutoRouter();
  }
}