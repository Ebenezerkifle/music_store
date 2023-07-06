import 'package:flutter/material.dart';
import 'package:music_store/ui/widgets/smart_widgets/build_tracks/build_trakcs_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../../../common/app_text_style.dart';
import '../../dumb_widgets/custome_list_item.dart';

class BuildTracksView extends StatelessWidget {
  const BuildTracksView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => BuildTracksViewModel(),
        builder: (context, model, child) {
          return Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Tracks", style: AppTextStyle.h2Normal),
                Text("See all", style: AppTextStyle.h3Normal),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: model.allTracks
                      .map((song) => CustomeListItem(
                          title: song.title,
                          subtitles: [song.album ?? '', song.artist ?? ''],
                          image: song.extras!['path'],
                          duration: song.duration))
                      .toList()),
            ),
          ]);
        });
  }
}
