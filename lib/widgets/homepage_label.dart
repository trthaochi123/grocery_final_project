import 'package:flutter/material.dart';

import '../base/colors/app_colors.dart';

class HomePageLabel extends StatelessWidget {
  final String firstLabel;

  const HomePageLabel({super.key, required this.firstLabel});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            firstLabel,
            style: const TextStyle(fontSize: 18, fontFamily: "SemiBold"),
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 13,
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Explore All',
              style: TextStyle(color: AppColors.greenMainColor, fontFamily: "SemiBold"),
            ),
          ),
        ],
      ),
    );
  }

}