import 'package:flutter/material.dart';

class NamePageLabel extends StatelessWidget {
  final String namePageLabel;
  final TextStyle textStyle;

  const NamePageLabel({
    super.key,
    required this.namePageLabel,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      namePageLabel,
      style: textStyle,
    );
  }
}
