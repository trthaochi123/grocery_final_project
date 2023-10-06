import 'package:flutter/material.dart';
import 'package:sg_grocery_project/base/colors/app_colors.dart';

class ButtonNormalWidget extends StatefulWidget {
  final Function()? onClickButton;
  final String textButton;
  final TextStyle textStyle;
  final double heightButton;
  final double widthButton;
  

  const ButtonNormalWidget(
      {super.key,
      required this.onClickButton,
      required this.textButton,
      required this.heightButton,
      required this.widthButton,
      required this.textStyle});

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
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(1)),
          textStyle: widget.textStyle,
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        onPressed: widget.onClickButton,
        child: Text(
          widget.textButton,
        ),
      ),
    );
  }
}
