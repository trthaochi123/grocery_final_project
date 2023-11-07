import 'package:flutter/material.dart';

import '../base/colors/app_colors.dart';

class LogElevatedButton extends StatelessWidget {
  final double buttonWidth;
  final String buttonName;
  final Function() onClick;
  final double radius;

  const LogElevatedButton({
    super.key,
    required this.buttonWidth,
    required this.buttonName,
    required this.onClick,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      width: buttonWidth,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.greenMainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        onPressed: onClick,
        child: Text(
          buttonName,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
