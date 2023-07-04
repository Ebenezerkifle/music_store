import 'package:flutter/material.dart';
import 'package:music_store/app/locator.dart';
import 'package:music_store/services/query_songs_service.dart';

import 'app/router.dart';

void main() {
  setupLocator();
  _storagePermission();
  runApp(MyApp());
}

_storagePermission() {
  final queryService = locator<QuerySongs>();
  queryService.requestStoragePermission();
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
        primarySwatch: Colors.blue,
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
