import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tki_app/config/locator/injection.dart';
import 'package:tki_app/src/assessment_history/presentation/bloc/assessment_history_bloc.dart';

@RoutePage()
class AssessmentHistoryNavigationPage extends StatelessWidget
    implements AutoRouteWrapper {
  const AssessmentHistoryNavigationPage({super.key});

  static const String routeName = '/assessment-history';

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          locator<AssessmentHistoryBloc>()
            ..add(const GetFromMemoryEvent()),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
