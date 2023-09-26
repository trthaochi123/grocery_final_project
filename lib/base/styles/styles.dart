import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

class AppStyle {
  static TextStyle hintTextStyle = const TextStyle(
    fontFamily: "Light",
    color: AppColors.greyColor,
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

  static TextStyle textButtonMediumStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 18,
    fontFamily: "Regular",
  );

  static TextStyle textButtonSmallStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 14,
    fontFamily: "Medium",
  );
}