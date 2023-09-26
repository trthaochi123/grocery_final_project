import 'package:flutter/material.dart';
import 'package:sg_grocery_project/base/styles/styles.dart';

import '../base/colors/app_colors.dart';

class ButtonWidget extends StatefulWidget {
  final Function()? onPressed;
  final String textButton;

  const ButtonWidget({super.key, this.onPressed, required this.textButton});

  @override
  State<StatefulWidget> createState() => _ButtonWidget();
}

class _ButtonWidget extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.greenMainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            widget.textButton,
            style: AppStyle.textButtonMediumStyle
          ),
        ),
      ),
    );
  }
}
