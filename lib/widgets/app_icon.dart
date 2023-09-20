import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {

  static const iconSplash = 'assets/svg/ic_splash.svg';

  final String icon;
  final String username;
  final String name;

  const AppIcon({super.key, required this.icon, required this.username, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(icon),
        SizedBox(height: 14),
        Text(name, style: TextStyle(
          fontFamily: "Medium",
          fontSize: 20
        ),),

        SizedBox(height: 4),
        Text(username, style: TextStyle(
          fontFamily: "Regular",
          fontSize: 14,
        ),),
        SizedBox(height: 24),
      ],
    );
  }

}