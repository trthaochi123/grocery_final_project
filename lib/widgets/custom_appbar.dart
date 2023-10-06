import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../base/styles/styles.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String textTitle;
  final String iconPath;
  final Color backgroundColor;
  final TextStyle textStyle;

  const CustomAppbar({super.key, required this.textTitle, required this.backgroundColor, required this.iconPath, required this.textStyle});

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.maxFinite, 44);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: backgroundColor,
      leading: IconButton(
        icon: SvgPicture.asset(iconPath),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          textTitle,
          style: textStyle,
        ),
      ),
    );
  }
}