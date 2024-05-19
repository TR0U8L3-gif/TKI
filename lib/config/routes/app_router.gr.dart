// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:tki_app/src/home/presentation/pages/home_page.dart' as _i1;
import 'package:tki_app/src/interpretation_report/presentation/pages/interpretation_report_page.dart'
    as _i2;
import 'package:tki_app/src/language/presentation/pages/languages_page.dart'
    as _i3;
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart'
    as _i8;
import 'package:tki_app/src/tki_questions_set/presentation/pages/question_set_page.dart'
    as _i4;
import 'package:tki_app/src/tki_questions_set/presentation/pages/questions_set_page.dart'
    as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    InterpretationReportRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.InterpretationReportPage(),
      );
    },
    LanguagesRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LanguagesPage(),
      );
    },
    QuestionSetRoute.name: (routeData) {
      final args = routeData.argsAs<QuestionSetRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.QuestionSetPage(
          key: args.key,
          questionSet: args.questionSet,
        ),
      );
    },
    QuestionsSetRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.WrappedRoute(child: const _i5.QuestionsSetPage()),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.InterpretationReportPage]
class InterpretationReportRoute extends _i6.PageRouteInfo<void> {
  const InterpretationReportRoute({List<_i6.PageRouteInfo>? children})
      : super(
          InterpretationReportRoute.name,
          initialChildren: children,
        );

  static const String name = 'InterpretationReportRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LanguagesPage]
class LanguagesRoute extends _i6.PageRouteInfo<void> {
  const LanguagesRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LanguagesRoute.name,
          initialChildren: children,
        );

  static const String name = 'LanguagesRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.QuestionSetPage]
class QuestionSetRoute extends _i6.PageRouteInfo<QuestionSetRouteArgs> {
  QuestionSetRoute({
    _i7.Key? key,
    required _i8.QuestionSet questionSet,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          QuestionSetRoute.name,
          args: QuestionSetRouteArgs(
            key: key,
            questionSet: questionSet,
          ),
          initialChildren: children,
        );

  static const String name = 'QuestionSetRoute';

  static const _i6.PageInfo<QuestionSetRouteArgs> page =
      _i6.PageInfo<QuestionSetRouteArgs>(name);
}

class QuestionSetRouteArgs {
  const QuestionSetRouteArgs({
    this.key,
    required this.questionSet,
  });

  final _i7.Key? key;

  final _i8.QuestionSet questionSet;

  @override
  String toString() {
    return 'QuestionSetRouteArgs{key: $key, questionSet: $questionSet}';
  }
}

/// generated route for
/// [_i5.QuestionsSetPage]
class QuestionsSetRoute extends _i6.PageRouteInfo<void> {
  const QuestionsSetRoute({List<_i6.PageRouteInfo>? children})
      : super(
          QuestionsSetRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuestionsSetRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
