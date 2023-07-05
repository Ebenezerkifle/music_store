import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:music_store/models/music.dart';
import 'package:on_audio_query/on_audio_query.dart';

@lazySingleton
class QuerySongs {
  late final OnAudioQuery audioQuery;
  List<Music> _musicList = [];

  get musicList => _musicList;

  QuerySongs() {
    audioQuery = OnAudioQuery();
  }

  Future<bool> requestStoragePermission() async {
    print('request Storage permission');
    late bool permissionStatus;
    if (!kIsWeb) {
      permissionStatus = await audioQuery.permissionsStatus();
      if (!permissionStatus) {
        permissionStatus = await audioQuery.permissionsRequest();
        print('--------------------------------');
        print(permissionStatus);
      }
    }
    return permissionStatus;
  }

  Future<List<Music>> getListOfSongs() async {
    print('getting all songs');
    List<SongModel> songList;
    List<Music> musicList = [];
    songList = await audioQuery.querySongs(
      sortType: null,
      orderType: OrderType.ASC_OR_SMALLER,
      uriType: UriType.EXTERNAL,
      ignoreCase: true,
    );
    for (SongModel song in songList) {
      musicList.add(
        Music(
          album: song.album ?? '',
          duration: song.duration ?? 0,
          title: song.title,
          uri: song.uri ?? '',
          id: song.id,
          artist: song.artist ?? '',
          displayNameWOExt: song.displayNameWOExt,
          isFavorite: false,
        ),
      );
    }
    print('length:' + musicList.length.toString());
    _musicList = musicList;
    return musicList;
  }

  Map<String, List<Music>> getAlbumList() {
    Map<String, List<Music>> albums = {};
    for (var song in _musicList) {
      List<Music> songList = [];
      String albumName = song.album;
      if (albums.containsKey(albumName)) {
        songList = albums[albumName] ?? [];
        songList.add(song);
        albums.update(albumName, (value) => songList);
      } else {
        albums[albumName] = [song];
      }
    }
    return albums;
  }

  Map<int, Music> getIdSongMap() {
    Map<int, Music> songMap = {};
    for (Music song in _musicList) {
      songMap[song.id] = song;
    }
    return songMap;
  }
}
