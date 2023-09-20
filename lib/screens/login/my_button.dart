
import 'package:flutter/material.dart';

import '../../base/colors/app_colors.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;

  const MyButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(17),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: AppColors.greenMainColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text('Login', style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            fontFamily: "Medium"
          ),),
        ),
      ),
    );
  }

}