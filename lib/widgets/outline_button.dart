import 'package:flutter/material.dart';

class OutlinedButtonWidget extends StatefulWidget {
  const OutlinedButtonWidget(
      {super.key,
      this.onClickButton,
      required this.textButton,
      required this.textStyle,
      required this.heightButton,
      required this.widthButton});

  final Function()? onClickButton;
  final String textButton;
  final TextStyle textStyle;
  final double heightButton;
  final double widthButton;

  @override
  State<OutlinedButtonWidget> createState() => _OutlinedButtonWidgetState();
}

class _OutlinedButtonWidgetState extends State<OutlinedButtonWidget> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.heightButton,
      width: widget.widthButton,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(1)),
          textStyle: widget.textStyle,
          foregroundColor: Colors.green,
          side: BorderSide(width: 0.4, color: Colors.green),
            padding: EdgeInsets.only(right: 2),
        ),
        onPressed: () {},
        child: Text(widget.textButton),
      ),
    );
  }
}
