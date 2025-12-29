import 'package:auto_route/auto_route.dart';
import 'package:romsis_book_discovery/core/enums/app_routes.enum.dart';
import 'package:romsis_book_discovery/core/routes/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "View,Route")
class AppRouter extends RootStackRouter {
  
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: HomeRoute.page,
      path: AppRoutesEnum.home.routeName,
      initial: true,
    ),
  ];
}