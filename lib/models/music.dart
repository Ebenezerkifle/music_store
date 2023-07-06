// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Music {
    final String title;
  final String uri;
  final int id;
  final String album;
  final int duration;
  final String artist;
  final String displayNameWOExt;
  bool? isFavorite;
  Music({
    required this.title,
    required this.uri,
    required this.id,
    required this.album,
    required this.duration,
    required this.artist,
    required this.displayNameWOExt,
    required this.isFavorite,
  });

  Music copyWith({
    String? title,
    String? uri,
    int? id,
    String? album,
    int? duration,
    String? artist,
    String? displayNameWOExt,
    bool? isFavorite,
  }) {
    return Music(
      title: title ?? this.title,
      uri: uri ?? this.uri,
      id: id ?? this.id,
      album: album ?? this.album,
      duration: duration ?? this.duration,
      artist: artist ?? this.artist,
      displayNameWOExt: displayNameWOExt ?? this.displayNameWOExt,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'uri': uri,
      'id': id,
      'album': album,
      'duration': duration,
      'artist': artist,
      'displayNameWOExt': displayNameWOExt,
      'isFavorite': isFavorite,
    };
  }

  factory Music.fromMap(Map<String, dynamic> map) {
    return Music(
      title: map['title'] as String,
      uri: map['uri'] as String,
      id: map['id'] as int,
      album: map['album'] as String,
      duration: map['duration'] as int,
      artist: map['artist'] as String,
      displayNameWOExt: map['displayNameWOExt'] as String,
      isFavorite: map['isFavorite'] != null ? map['isFavorite'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Music.fromJson(String source) => Music.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Music(title: $title, uri: $uri, id: $id, album: $album, duration: $duration, artist: $artist, displayNameWOExt: $displayNameWOExt, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(covariant Music other) {
    if (identical(this, other)) return true;
  
    return 
      other.title == title &&
      other.uri == uri &&
      other.id == id &&
      other.album == album &&
      other.duration == duration &&
      other.artist == artist &&
      other.displayNameWOExt == displayNameWOExt &&
      other.isFavorite == isFavorite;
  }

  @override
  int get hashCode {
    return title.hashCode ^
      uri.hashCode ^
      id.hashCode ^
      album.hashCode ^
      duration.hashCode ^
      artist.hashCode ^
      displayNameWOExt.hashCode ^
      isFavorite.hashCode;
  }
}
