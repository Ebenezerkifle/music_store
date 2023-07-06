// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:music_store/ui/common/app_text_style.dart';

import '../../common/app_colors.dart';
import 'image_builder.dart';

class CustomeCardItem extends StatelessWidget {
  CustomeCardItem(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image});
  final String title;
  final List<String> subtitle;
  // ignore: prefer_typing_uninitialized_variables
  var image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      width: MediaQuery.of(context).size.width * .4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ImageBuilder(height: 170, width: 170, image: image),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title,
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                  style: AppTextStyle.h3Bold),
              Column(
                children: subtitle
                    .map((e) => Text(e,
                        style: AppTextStyle.withColor(
                            color: AppColors.grey,
                            style: AppTextStyle.h3Normal)))
                    .toList(),
              )
            ],
          )
        ],
      ),
    );
  }
}
