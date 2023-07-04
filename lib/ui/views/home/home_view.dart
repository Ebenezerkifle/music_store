import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:music_store/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:music_store/ui/common/app_text_style.dart';

import 'build_albums.dart';
import 'build_tracks.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) {
        model.getMusicList(); // getting a music list from a local storage.
        print(model.music_list.length);
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
                            BuildAlbums(),
                            SizedBox(height: 15.0),
                            BuildTracks(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          floatingActionButton: FloatingActionButton(
            onPressed: model.updateCounter,
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
