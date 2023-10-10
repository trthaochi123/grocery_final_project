import 'package:flutter/material.dart';
import 'package:sg_grocery_project/base/colors/app_colors.dart';

class ButtonNormalWidget extends StatefulWidget {
  final Function()? onClickButton;
  final String textButton;
  final TextStyle textStyle;
  final double heightButton;
  final double widthButton;
  final Color backgroundColorButton;

  const ButtonNormalWidget({
    super.key,
    required this.onClickButton,
    required this.textButton,
    required this.heightButton,
    required this.widthButton,
    required this.textStyle,
    required this.backgroundColorButton,
  });

  @override
  State<StatefulWidget> createState() => _ButtonNormalWidgetState();
}

class _ButtonNormalWidgetState extends State<ButtonNormalWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.heightButton,
      width: widget.widthButton,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(2.0),
          ),
          textStyle: widget.textStyle,
          backgroundColor: widget.backgroundColorButton,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.only(right: 2),
        ),
        onPressed: widget.onClickButton,
        child: Text(
          widget.textButton,
        ),
      ),
    );
  }
}
