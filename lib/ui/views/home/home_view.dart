import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:music_store/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text(model.counter.toString()),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: model.updateCounter,
          child: const Icon(Icons.add),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
