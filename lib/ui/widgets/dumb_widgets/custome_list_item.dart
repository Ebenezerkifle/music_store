import 'package:flutter/material.dart';
import 'package:music_store/ui/common/app_text_style.dart';

import '../../common/app_colors.dart';
import 'image_builder.dart';

// ignore: must_be_immutable
class CustomeListItem extends StatelessWidget {
  CustomeListItem({
    super.key,
    required this.title,
    required this.subtitles,
    required this.image,
    this.duration,
  });
  final String title;
  final List<String> subtitles;
  // ignore: prefer_typing_uninitialized_variables
  var duration;
  var image;
  String twoDigits(int n) => n.toString().padLeft(2, "0");

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ImageBuilder(
                  height: MediaQuery.of(context).size.height * .1,
                  width: MediaQuery.of(context).size.height * .1,
                  image: image,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(title, style: AppTextStyle.h3Bold),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: subtitles
                            .map((e) => Text(
                                  e,
                                  style: AppTextStyle.withColor(
                                      color: AppColors.grey,
                                      style: AppTextStyle.h4Normal),
                                ))
                            .toList())
                  ],
                )
              ],
            ),
            Row(
              children: [
                Text(
                    '${twoDigits(duration.inMinutes)}:${twoDigits(duration.inSeconds.remainder(60))}',
                    style: AppTextStyle.h4Normal),
                const SizedBox(width: 5),
                GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.more_vert,
                      color: AppColors.secondary,
                    ))
              ],
            )
          ],
        ));
  }
}
