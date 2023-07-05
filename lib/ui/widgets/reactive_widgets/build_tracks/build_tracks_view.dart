import 'package:flutter/material.dart';
import 'package:music_store/ui/widgets/reactive_widgets/build_tracks/build_trakcs_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../../../common/app_text_style.dart';
import '../../dome_widgets/custome_list_item.dart';

class BuildTracksView extends StatelessWidget {
  const BuildTracksView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => BuildTracksViewModel(),
      builder: (context, model, child) => Column(children: [
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
      ]),
    );
  }
}
