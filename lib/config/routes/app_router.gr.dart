// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:tki_app/src/home/presentation/pages/home_page.dart' as _i1;
import 'package:tki_app/src/interpretation_report/presentation/pages/interpretation_report_page.dart'
    as _i2;
import 'package:tki_app/src/language/presentation/pages/languages_page.dart'
    as _i3;
import 'package:tki_app/src/tki_questions_set/data/models/question_set.dart'
    as _i9;
import 'package:tki_app/src/tki_questions_set/presentation/pages/question_set_page.dart'
    as _i4;
import 'package:tki_app/src/tki_questions_set/presentation/pages/question_sets_navigation_page.dart'
    as _i5;
import 'package:tki_app/src/tki_questions_set/presentation/pages/questions_set_page.dart'
    as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    InterpretationReportRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.InterpretationReportPage(),
      );
    },
    LanguagesRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LanguagesPage(),
      );
    },
    QuestionSetRoute.name: (routeData) {
      final args = routeData.argsAs<QuestionSetRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.QuestionSetPage(
          key: args.key,
          questionSet: args.questionSet,
          isRemote: args.isRemote,
          index: args.index,
        ),
      );
    },
    QuestionSetsNavigationRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.WrappedRoute(child: const _i5.QuestionSetsNavigationPage()),
      );
    },
    QuestionsSetRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.QuestionsSetPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.InterpretationReportPage]
class InterpretationReportRoute extends _i7.PageRouteInfo<void> {
  const InterpretationReportRoute({List<_i7.PageRouteInfo>? children})
      : super(
          InterpretationReportRoute.name,
          initialChildren: children,
        );

  static const String name = 'InterpretationReportRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LanguagesPage]
class LanguagesRoute extends _i7.PageRouteInfo<void> {
  const LanguagesRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LanguagesRoute.name,
          initialChildren: children,
        );

  static const String name = 'LanguagesRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.QuestionSetPage]
class QuestionSetRoute extends _i7.PageRouteInfo<QuestionSetRouteArgs> {
  QuestionSetRoute({
    _i8.Key? key,
    required _i9.QuestionSet questionSet,
    required bool isRemote,
    required int index,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          QuestionSetRoute.name,
          args: QuestionSetRouteArgs(
            key: key,
            questionSet: questionSet,
            isRemote: isRemote,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'QuestionSetRoute';

  static const _i7.PageInfo<QuestionSetRouteArgs> page =
      _i7.PageInfo<QuestionSetRouteArgs>(name);
}

class QuestionSetRouteArgs {
  const QuestionSetRouteArgs({
    this.key,
    required this.questionSet,
    required this.isRemote,
    required this.index,
  });

  final _i8.Key? key;

  final _i9.QuestionSet questionSet;

  final bool isRemote;

  final int index;

  @override
  String toString() {
    return 'QuestionSetRouteArgs{key: $key, questionSet: $questionSet, isRemote: $isRemote, index: $index}';
  }
}

/// generated route for
/// [_i5.QuestionSetsNavigationPage]
class QuestionSetsNavigationRoute extends _i7.PageRouteInfo<void> {
  const QuestionSetsNavigationRoute({List<_i7.PageRouteInfo>? children})
      : super(
          QuestionSetsNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuestionSetsNavigationRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.QuestionsSetPage]
class QuestionsSetRoute extends _i7.PageRouteInfo<void> {
  const QuestionsSetRoute({List<_i7.PageRouteInfo>? children})
      : super(
          QuestionsSetRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuestionsSetRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
