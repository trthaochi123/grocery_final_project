import 'package:flutter/material.dart';
import 'package:sg_grocery_project/base/styles/app_styles.dart';

class TextButtonWidget extends StatelessWidget {
  final String textButtonName;
  final Function() onClick;

  const TextButtonWidget({
    super.key,
    required this.textButtonName,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onClick,
      child: Text(
        textButtonName,
        style: AppStyle.textButtonNameWidget,
      ),
    );
  }
}
