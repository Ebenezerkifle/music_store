import 'package:audio_service/audio_service.dart';
import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';

@lazySingleton
class AudioPlayingService extends BaseAudioHandler with ListenableServiceMixin {
  List<MediaItem> currentPlayList = RxList(); // current playlist
  final currentIndex = RxValue<int>(0); // the index of currently playing music
  final _player = AudioPlayer();
  AudioPlayingService() {
    listenToReactiveValues([currentPlayList, currentIndex]);
  }
  bool state() {
    return _player.playing;
  }

  @override
  Future<void> addQueueItems(List<MediaItem> mediaItems) async {
    currentPlayList = mediaItems;
  }

  @override
  Future<void> addQueueItem(MediaItem mediaItem) async {
    _player.setUrl(mediaItem.extras!['uri']);
    
  }

  @override
  Future<void> play() => _player.play();

  @override
  Future<void> pause() => _player.pause();
}
