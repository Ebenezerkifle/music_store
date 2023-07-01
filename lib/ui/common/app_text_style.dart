import 'package:flutter/material.dart';

class AppTextStyle {
  static const TextStyle big = TextStyle(
    // fontFamily: 'Microsoft PhagsPa',
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static const TextStyle h2Normal = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: Colors.black87,
  );

  static const TextStyle h3Normal = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.black87,
  );
  static withColor({required Color color, required TextStyle style}) =>
      style.copyWith(color: color);
}
