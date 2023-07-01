import 'package:flutter/material.dart';
import 'package:music_store/ui/common/app_text_style.dart';

import '../../widgets/custome_card_item.dart';

class BuildAlbums extends StatelessWidget {
  const BuildAlbums({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text("Albums", style: AppTextStyle.h2Normal),
          Text("See all", style: AppTextStyle.h3Normal),
        ],
      ),
      Expanded(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .2,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
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
        ),
      )
    ]);
  }
}
