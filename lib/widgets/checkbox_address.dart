import 'package:flutter/material.dart';

import '../base/colors/app_colors.dart';

class CheckBoxAddress extends StatelessWidget {
  final String textCheckbox;

  const CheckBoxAddress({super.key, required this.textCheckbox});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.check_box_outline_blank,
          color: AppColors.greyColor,
        ),
        SizedBox(width: 4,),
        Text(
          textCheckbox,
          style: TextStyle(
            color: AppColors.greyColor,
            fontFamily: "Light",
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
