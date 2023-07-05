import 'package:stacked/stacked.dart';

import '../../../app/locator.dart';
import '../../../models/music.dart';
import '../../../services/query_songs_service.dart';

class HomeViewModel extends BaseViewModel {
  int _counter = 0;
  int get counter => _counter;
  List<Music> _music_list = [];
  List<Music> get music_list => _music_list;
  final querySongsService = locator<QuerySongs>();

  void updateCounter() {
    _counter++;
    notifyListeners();
  }

  void getMusicList() async {
    print('here we are');
    _music_list = await querySongsService.getListOfSongs();
    print(_music_list.length);
    notifyListeners();
  }
}
