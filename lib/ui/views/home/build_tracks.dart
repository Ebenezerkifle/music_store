import 'package:flutter/material.dart';

import '../../common/app_text_style.dart';
import '../../widgets/custome_list_item.dart';

class BuildTracks extends StatelessWidget {
  const BuildTracks({super.key});

  @override
  Widget build(BuildContext context) {
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
          children: List.generate(
              12,
              (index) => const Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 10, 0),
                    child: CustomeListItem(),
                  )),
        ),
      ),
    ]);
  }
}
