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

  static TextStyle textBlackLabelPage = const TextStyle(
    color: Colors.black87,
    fontWeight: FontWeight.bold,
    fontSize: 20,
    fontFamily: "Medium",
  );

  static TextStyle textWhiteLabelPage = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 20,
    fontFamily: "Medium",
  );

  static TextStyle textNameItemCart = const TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 18,
  fontFamily: "Medium",
  );

  static TextStyle textWeightItemCart = const TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
    fontSize: 14,
    fontFamily: "Regular",
  );

  static TextStyle textPriceItemCart = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 18,
    fontFamily: "SemiBold",
  );

  static TextStyle textButtonCartStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 18,
    fontFamily: "Medium",
  );

}
