import 'package:flutter/material.dart';

Widget playButton({required VoidCallback onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      // padding: const EdgeInsets.all(.25),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.7),
        shape: BoxShape.circle,
      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(
          Icons.play_arrow_rounded,
          color: Colors.white,
          size: 30,
        ),
      ),
    ),
  );
}
