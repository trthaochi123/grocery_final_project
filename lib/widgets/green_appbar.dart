import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../base/colors/app_colors.dart';
import '../base/images/app_images.dart';
class GreenAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function() clickBack;
  const GreenAppbar({
    super.key,
    required this.title, required this.clickBack,
  });
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 64,
      elevation: 0,
      leading: IconButton(
        onPressed: clickBack,
        icon: SvgPicture.asset(AppSvg.icBackWhitePath),
      ),
      leadingWidth: 36,
      backgroundColor: AppColors.greenMainColor,
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 23,
        ),
      ),
    );
  }
  @override
  Size get preferredSize => const Size(0, 64);
}
