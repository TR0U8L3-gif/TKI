import 'package:go_router/go_router.dart';
import 'package:tki_app/main.dart';
import 'package:tki_app/src/home/presentation/pages/home_page.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomePage();
      },
      routes: [
        GoRoute(
          path: 'tki-assessment',
          builder: (context, state) {
            return const MyHomePage(title: 'Flutter Demo Home Page');
          },
        ),
        GoRoute(
          path: 'interpretation-report',
          builder: (context, state) {
            return const MyHomePage(title: 'Flutter Demo Home Page');
          },
        ),
        GoRoute(
          path: 'assessment-history',
          builder: (context, state) {
            return const MyHomePage(title: 'Flutter Demo Home Page');
          },
        ),
        GoRoute(
          path: 'tki-questions-set',
          builder: (context, state) {
            return const MyHomePage(title: 'Flutter Demo Home Page');
          },
        ),
        GoRoute(
          path: 'language',
          builder: (context, state) {
            return const MyHomePage(title: 'Flutter Demo Home Page');
          },
        ),
      ],
    ),
  ],
);
