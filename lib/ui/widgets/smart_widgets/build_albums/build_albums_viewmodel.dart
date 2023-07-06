import 'package:audio_service/audio_service.dart';
import 'package:music_store/app/locator.dart';
import 'package:music_store/services/query_songs_service.dart';
import 'package:stacked/stacked.dart';

class BuildAlbumsViewModel extends ReactiveViewModel {
  final queryService = locator<QuerySongs>();
  Map<String, List<MediaItem>> get albums => queryService.albums;
}
