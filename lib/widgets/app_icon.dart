import 'package:flutter/material.dart';

import '../base/styles/app_styles.dart';

class AppIcon extends StatelessWidget {
  static const iconSplash = 'assets/svg/ic_splash.svg';

  final String icon;
  final String username;
  final String name;

  const AppIcon({
    super.key,
    required this.icon,
    required this.username,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(icon),
        const SizedBox(height: 14),
        Text(
          name,
          style: AppStyle.appIconNameStyle,
        ),
        const SizedBox(height: 4),
        Text(
          username,
          style: AppStyle.appIconUserStyle,
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
