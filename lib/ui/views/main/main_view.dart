import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:music_store/app/router.gr.dart';
import 'package:music_store/ui/views/main/widgets/bar_items.dart';
import 'package:music_store/ui/views/main/widgets/bottom_nav.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@RoutePage()
class MainView extends StatefulWidget {
  const MainView({this.initialIndex, super.key});
  final int? initialIndex;
  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _randomSha = 0;

  final routes = [
    //todo add routes here
    const HomeView(), const LibraryView(), const FavoriteView(),
    const SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: routes,
      bottomNavigationBuilder: (context, tabsRouter) {
        if (widget.initialIndex != null && _randomSha != widget.initialIndex) {
          Future.delayed(const Duration(milliseconds: 500), () {
            tabsRouter.setActiveIndex(2);
            _randomSha = widget.initialIndex ?? 0;
          });
        }
        return BottomNav(
          onTabSelected: tabsRouter.setActiveIndex,
          currentSelectedIndex: tabsRouter.activeIndex,
          items: const [
            BottomBarItem(title: "Home", icon: FontAwesomeIcons.house),
            BottomBarItem(icon: FontAwesomeIcons.folder, title: "Library"),
            BottomBarItem(icon: FontAwesomeIcons.solidHeart, title: "Favorite"),
            BottomBarItem(icon: FontAwesomeIcons.gear, title: "Settings"),
          ],
        );
      },
    );
  }
}
