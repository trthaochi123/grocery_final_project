import 'package:flutter/material.dart';
import 'package:sg_grocery_project/base/styles/app_styles.dart';
import 'package:sg_grocery_project/screens/explore/explore_page.dart';

import '../base/colors/app_colors.dart';

class BarLabel extends StatelessWidget {
  final String firstLabel;
  final String secondLable;
  final Function()? onClickButton;

  const BarLabel({
    super.key,
    required this.firstLabel,
    required this.secondLable,
    this.onClickButton,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        top: 4,
        bottom: 4,
        right: 4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            firstLabel,
            style: AppStyle.firstBarLabel,
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: AppStyle.textButtonBarLabelStyle,
            ),
            onPressed: onClickButton,
            child: Text(
              secondLable,
              style: AppStyle.secondBarLabel,
            ),
          ),
        ],
      ),
    );
  }
}
