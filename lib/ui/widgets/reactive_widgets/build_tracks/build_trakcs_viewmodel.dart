import 'package:stacked/stacked.dart';

import '../../../../models/music.dart';

class BuildTracksViewModel extends BaseViewModel {
  List<Music> _allTracks = [];
  List<Music> get allTracks => _allTracks;
}
