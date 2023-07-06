import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../common/app_text_style.dart';

@RoutePage()
class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'Setting Page',
        style: AppTextStyle.h1Bold,
      ),
    );
  }
}
