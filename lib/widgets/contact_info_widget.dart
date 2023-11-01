import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../base/colors/app_colors.dart';

class ContactInfoWidget extends StatelessWidget {

  final String icon;
  final String textInfo;

  const ContactInfoWidget({super.key, required this.icon, required this.textInfo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Container(
        width: 396,
        height: 60,
        decoration: BoxDecoration(
          color: AppColors.greenFaq,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 48, vertical: 18),
              child: Row(
                children: [
                  SvgPicture.asset(icon),
                  Text(textInfo)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
