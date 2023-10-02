import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sg_grocery_project/base/images/images.dart';
import 'package:sg_grocery_project/widgets/app_icon.dart';

class BackButtonWidget extends StatelessWidget {
  final String svgPath;
  final Function()? onClick;

  const BackButtonWidget({super.key, this.onClick, required this.svgPath});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onClick,
      icon: SvgPicture.asset(svgPath),
    );
  }
}
