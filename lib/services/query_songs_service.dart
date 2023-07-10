import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';
import 'package:audio_service/audio_service.dart';

@lazySingleton
class QuerySongs with ListenableServiceMixin {
  late final OnAudioQuery audioQuery;
  List<MediaItem> _musicList = RxList();
  Map<String, List<MediaItem>> _albums = RxMap();

  get albums => _albums;
  get musicList => _musicList;
  final _songsFetched = Completer();

  QuerySongs() {
    audioQuery = OnAudioQuery();
    listenToReactiveValues([_musicList, _albums]);
  }

  Future<bool> requestStoragePermission() async {
    late bool permissionStatus;
    if (!kIsWeb) {
      permissionStatus = await audioQuery.permissionsStatus();
      if (!permissionStatus) {
        permissionStatus = await audioQuery.permissionsRequest();
      }
    }
    return permissionStatus;
  }

  Future<void> getListOfSongs() async {
    List<SongModel> songList;
    List<MediaItem> musicList = [];
    songList = await audioQuery.querySongs(
      sortType: null,
      orderType: OrderType.ASC_OR_SMALLER,
      uriType: UriType.EXTERNAL,
      ignoreCase: true,
    );
    for (SongModel song in songList) {
      musicList.add(
        MediaItem(
          id: song.id.toString(),
          title: song.title,
          album: song.album,
          duration: Duration(milliseconds: song.duration ?? 0),
          artist: song.artist,
          artUri: Uri.parse(song.uri ?? ''),
          extras: {
            // extra fields could be added!
            'path': await audioQuery.queryArtwork(song.id, ArtworkType.AUDIO),
            'favorite': false,
            'uri': song.uri,
          },
        ),
      );
    }
    _musicList = musicList;
    _songsFetched.complete();
    notifyListeners();
  }

  Future<void> ensureSongsFetched() async {
    return _songsFetched.future;
  }

  void getAlbumList() {
    Map<String, List<MediaItem>> albums = {};
    for (var song in _musicList) {
      List<MediaItem> songList = [];
      String albumName = song.album ?? '';
      if (albums.containsKey(albumName)) {
        songList = albums[albumName] ?? [];
        songList.add(song);
        albums.update(albumName, (value) => songList);
      } else {
        albums[albumName] = [song];
      }
    }
    _albums = albums;
    notifyListeners();
  }

  // Map<int, MediaItem> getIdSongMap() {
  //   Map<int, MediaItem> songMap = {};
  //   for (MediaItem song in _musicList) {
  //     songMap[song.id] = song;
  //   }
  //   return songMap;
  // }
}
