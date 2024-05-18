// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:tki_app/src/home/presentation/pages/home_page.dart' as _i1;
import 'package:tki_app/src/interpretation_report/presentation/pages/interpretation_report_page.dart'
    as _i2;
import 'package:tki_app/src/language/presentation/pages/languages_page.dart'
    as _i3;
import 'package:tki_app/src/tki_questions_set/presentation/pages/questions_set_page.dart'
    as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    InterpretationReportRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.InterpretationReportPage(),
      );
    },
    LanguagesRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LanguagesPage(),
      );
    },
    QuestionsSetRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.WrappedRoute(child: const _i4.QuestionsSetPage()),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.InterpretationReportPage]
class InterpretationReportRoute extends _i5.PageRouteInfo<void> {
  const InterpretationReportRoute({List<_i5.PageRouteInfo>? children})
      : super(
          InterpretationReportRoute.name,
          initialChildren: children,
        );

  static const String name = 'InterpretationReportRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LanguagesPage]
class LanguagesRoute extends _i5.PageRouteInfo<void> {
  const LanguagesRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LanguagesRoute.name,
          initialChildren: children,
        );

  static const String name = 'LanguagesRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.QuestionsSetPage]
class QuestionsSetRoute extends _i5.PageRouteInfo<void> {
  const QuestionsSetRoute({List<_i5.PageRouteInfo>? children})
      : super(
          QuestionsSetRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuestionsSetRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
