import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyle {
  static const TextStyle big = TextStyle(
    // fontFamily: 'Microsoft PhagsPa',
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.secondary,
  );
  static const TextStyle h1Bold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.secondary,
  );
  static const TextStyle h2Normal = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: AppColors.secondary,
  );
  static const TextStyle h3Bold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.secondary,
  );
  static const TextStyle h3Normal = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.secondary,
  );
  static const TextStyle h4Normal = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.secondary,
  );
  static withColor({required Color color, required TextStyle style}) =>
      style.copyWith(color: color);
}
