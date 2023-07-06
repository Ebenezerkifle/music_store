// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:music_store/ui/views/favorite/favorite_view.dart' as _i3;
import 'package:music_store/ui/views/home/home_view.dart' as _i1;
import 'package:music_store/ui/views/library/library_view.dart' as _i4;
import 'package:music_store/ui/views/main/main_view.dart' as _i2;
import 'package:music_store/ui/views/setting/setting_view.dart' as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeView.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeView(),
      );
    },
    MainView.name: (routeData) {
      final args =
          routeData.argsAs<MainViewArgs>(orElse: () => const MainViewArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.MainView(
          initialIndex: args.initialIndex,
          key: args.key,
        ),
      );
    },
    FavoriteView.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.FavoriteView(),
      );
    },
    LibraryView.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LibraryView(),
      );
    },
    SettingView.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SettingView(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeView]
class HomeView extends _i6.PageRouteInfo<void> {
  const HomeView({List<_i6.PageRouteInfo>? children})
      : super(
          HomeView.name,
          initialChildren: children,
        );

  static const String name = 'HomeView';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MainView]
class MainView extends _i6.PageRouteInfo<MainViewArgs> {
  MainView({
    int? initialIndex,
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          MainView.name,
          args: MainViewArgs(
            initialIndex: initialIndex,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MainView';

  static const _i6.PageInfo<MainViewArgs> page =
      _i6.PageInfo<MainViewArgs>(name);
}

class MainViewArgs {
  const MainViewArgs({
    this.initialIndex,
    this.key,
  });

  final int? initialIndex;

  final _i7.Key? key;

  @override
  String toString() {
    return 'MainViewArgs{initialIndex: $initialIndex, key: $key}';
  }
}

/// generated route for
/// [_i3.FavoriteView]
class FavoriteView extends _i6.PageRouteInfo<void> {
  const FavoriteView({List<_i6.PageRouteInfo>? children})
      : super(
          FavoriteView.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteView';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LibraryView]
class LibraryView extends _i6.PageRouteInfo<void> {
  const LibraryView({List<_i6.PageRouteInfo>? children})
      : super(
          LibraryView.name,
          initialChildren: children,
        );

  static const String name = 'LibraryView';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SettingView]
class SettingView extends _i6.PageRouteInfo<void> {
  const SettingView({List<_i6.PageRouteInfo>? children})
      : super(
          SettingView.name,
          initialChildren: children,
        );

  static const String name = 'SettingView';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
