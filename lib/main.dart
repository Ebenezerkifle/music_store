import 'package:flutter/material.dart';
import 'package:music_store/app/locator.dart';
import 'package:music_store/services/query_songs_service.dart';
import 'package:music_store/ui/common/app_colors.dart';

import 'app/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await _storagePermission() ? _querySongs() : null;
  runApp(MyApp());
}

final queryService = locator<QuerySongs>();

Future<bool> _storagePermission() async {
  return queryService.requestStoragePermission();
}

_querySongs() async {
  await queryService.getListOfSongs();
  queryService
      .ensureSongsFetched(); // for the next line to be executed all songs should be fetched first!
  queryService.getAlbumList();
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Music Store',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: AppColors.primary,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          background: AppColors.background,
          error: AppColors.danger,
        ),
        scaffoldBackgroundColor: AppColors.background,
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
