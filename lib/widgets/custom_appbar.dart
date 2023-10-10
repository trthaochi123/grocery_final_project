import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../base/styles/app_styles.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String textTitle;
  final Color backgroundColor;
  final TextStyle textStyle;
  final AlignmentGeometry? alignment;

  const CustomAppbar({
    super.key,
    required this.textTitle,
    required this.backgroundColor,
    required this.textStyle,
    this.alignment,
  });

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.maxFinite, 44);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        title: alignment != null
            ? Align(
                alignment: alignment!,
                child: Text(
                  textTitle,
                  style: textStyle,
                ),
              )
            : Text(
                textTitle,
                style: textStyle,
              ));
  }
}
