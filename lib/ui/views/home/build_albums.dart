import 'package:flutter/material.dart';
import 'package:music_store/ui/common/app_text_style.dart';
import 'package:music_store/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/custome_card_item.dart';

class BuildAlbums extends StatelessWidget {
  const BuildAlbums({super.key});

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
            children: List.generate(
                12,
                (index) => const Padding(
                      padding: EdgeInsets.fromLTRB(0, 5, 10, 0),
                      child: CustomeCardItem(),
                    )),
          ),
        ),
      ]),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
