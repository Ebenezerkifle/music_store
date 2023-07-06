import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:music_store/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:music_store/ui/common/app_text_style.dart';

import '../../common/app_colors.dart';
import '../../widgets/smart_widgets/build_albums/build_albums_view.dart';
import '../../widgets/smart_widgets/build_tracks/build_tracks_view.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.nonReactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            body: SafeArea(
                top: true,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 10, 10.0, 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Music Store", style: AppTextStyle.big),
                      const SizedBox(height: 15.0),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(height: 15.0),
                              BuildAlbumsView(),
                              SizedBox(height: 15.0),
                              BuildTracksView(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            floatingActionButton: FloatingActionButton(
              onPressed: () {}, //todo play button action
              backgroundColor: AppColors.primary,
              child: const Icon(
                Icons.play_arrow,
              ),
            ),
          );
        });
  }
}
