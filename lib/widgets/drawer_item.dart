import 'package:sg_grocery_project/base/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerItem extends StatelessWidget {
  final String icon;
  final String title;

  // kiểu named argument
  const DrawerItem(
      {super.key,
      required this.icon,
      required this.title,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon),
        const SizedBox(
          width: 16,
          height: 38,
        ),
        Text(
          title,
          style: const TextStyle(
            fontFamily: "Regular",
            fontSize: 18,
            color: AppColors.textDrawerColor,
          ),
        )
      ],
    );
  }
}
