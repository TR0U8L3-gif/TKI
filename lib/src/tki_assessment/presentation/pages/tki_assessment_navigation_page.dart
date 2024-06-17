import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tki_app/config/locator/injection.dart';
import 'package:tki_app/src/tki_assessment/presentation/bloc/tki_assessment_bloc.dart';

@RoutePage()
class TkiAssessmentNavigationPage extends StatelessWidget
    implements AutoRouteWrapper {
  const TkiAssessmentNavigationPage({super.key});

  static const String routeName = '/tki-assessment';

    @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<TkiAssessmentBloc>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context){
    return const AutoRouter();
  }
}

