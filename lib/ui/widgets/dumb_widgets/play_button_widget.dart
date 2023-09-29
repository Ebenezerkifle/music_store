import 'package:flutter/material.dart';

Widget playButton({required VoidCallback onTap, required bool playing}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      // padding: const EdgeInsets.all(.25),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.7),
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          playing ? Icons.pause_rounded : Icons.play_arrow_rounded,
          color: Colors.white,
          size: 30,
        ),
      ),
    ),
  );
}
