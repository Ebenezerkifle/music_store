import 'dart:io';

import 'package:flutter/material.dart';

import '../../common/app_colors.dart';

class ImageBuilder extends StatelessWidget {
  ImageBuilder(
      {super.key,
      required this.height,
      required this.width,
      required this.image});
  final double height;
  final double width;
  // ignore: prefer_typing_uninitialized_variables
  var image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: image != null
          ? Image.memory(image, fit: BoxFit.cover)
          : Container(color: AppColors.primary),
    );
  }
}
