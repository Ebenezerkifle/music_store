import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:music_store/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:music_store/ui/common/app_text_style.dart';

import 'build_albums.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
            top: true,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10, 10.0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Music Store", style: AppTextStyle.big),
                  SizedBox(height: 15.0),
                  BuildAlbums(),
                ],
              ),
            )),
        floatingActionButton: FloatingActionButton(
          onPressed: model.updateCounter,
          child: const Icon(Icons.add),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
