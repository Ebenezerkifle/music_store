import 'package:stacked/stacked.dart';

import '../../../app/locator.dart';
import '../../../services/query_songs_service.dart';

class HomeViewModel extends BaseViewModel {
  final querySongsService = locator<QuerySongs>();
}
