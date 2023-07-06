import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:music_store/ui/common/app_text_style.dart';

@RoutePage()
class LibraryView extends StatelessWidget {
  const LibraryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'Library Page',
        style: AppTextStyle.h1Bold,
      ),
    );
  }
}
