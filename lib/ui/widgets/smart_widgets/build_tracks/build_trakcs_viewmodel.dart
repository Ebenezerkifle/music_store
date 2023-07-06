import 'package:audio_service/audio_service.dart';
import 'package:stacked/stacked.dart';
import '../../../../app/locator.dart';
import '../../../../services/query_songs_service.dart';

class BuildTracksViewModel extends ReactiveViewModel {
  final queryService = locator<QuerySongs>();
  List<MediaItem> get allTracks => queryService.musicList;
}
