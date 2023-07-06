import 'package:flutter/material.dart';
import 'package:music_store/ui/common/app_text_style.dart';
import 'package:stacked/stacked.dart';

import '../../dumb_widgets/custome_card_item.dart';
import 'build_albums_viewmodel.dart';

class BuildAlbumsView extends StatelessWidget {
  const BuildAlbumsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      builder: (context, model, child) => Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("Albums", style: AppTextStyle.h2Normal),
            Text("See all", style: AppTextStyle.h3Normal),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: model.albums.values
                  .map((album) => Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 10.0, 5),
                        child: CustomeCardItem(
                          title: album.first.album ?? '',
                          subtitle: [album.first.artist ?? ''],
                          image: album.first.extras!['path'],
                        ),
                      ))
                  .toList()),
        )
      ]),
      viewModelBuilder: () => BuildAlbumsViewModel(),
    );
  }
}
