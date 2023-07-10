import 'package:audio_service/audio_service.dart';
import 'package:music_store/services/audio_playing_service.dart';
import 'package:stacked/stacked.dart';
import '../../../../app/locator.dart';
import '../../../../services/query_songs_service.dart';

class BuildTracksViewModel extends ReactiveViewModel {
  final queryService = locator<QuerySongs>();
  final audioService = locator<AudioPlayingService>();
  List<MediaItem> get allTracks => queryService.musicList;

  void onPlay(MediaItem song) {
    print('onplay button clicked');
    audioService.addQueueItem(song);
    audioService.state()
        ? Future.delayed(const Duration(seconds: 1), () => audioService.pause())
        : Future.delayed(const Duration(seconds: 1), () => audioService.play());
  }
}
