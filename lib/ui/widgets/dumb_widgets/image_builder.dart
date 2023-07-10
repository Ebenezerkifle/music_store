import 'package:flutter/material.dart';

// ignore: must_be_immutable
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
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        image: image != null
            ? DecorationImage(
                image: MemoryImage(image),
                fit: BoxFit.cover,
              )
            : const DecorationImage(
                image: AssetImage(
                  'assets/images/defaultsongpic.jpg',
                ),
              ),
      ),
    );
  }
}
