import 'package:auto_route/auto_route.dart';
import 'package:music_store/app/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MainView.page, initial: true, children: [
          AutoRoute(page: HomeView.page),
          AutoRoute(page: LibraryView.page),
          AutoRoute(page: FavoriteView.page),
          AutoRoute(page: SettingView.page),
        ]),
      ];
}
