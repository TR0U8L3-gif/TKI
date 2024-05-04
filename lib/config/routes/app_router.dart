import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:tki_app/config/routes/app_router.gr.dart';
import 'package:tki_app/src/home/presentation/pages/home_page.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends $AppRouter {

 @override
 List<AutoRoute> get routes => [
   AutoRoute(page: HomeRoute.page, path: HomePage.routeName, initial: true),
 ];


  String getTabName(String routeName) {
    if (routeName.startsWith('/')) {
      routeName = routeName.substring(1);
    }
    return routeName;
  }
}
