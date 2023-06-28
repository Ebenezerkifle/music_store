import 'package:auto_route/auto_route.dart';
import 'package:music_store/app/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeView.page, initial: true),
      ];
}
