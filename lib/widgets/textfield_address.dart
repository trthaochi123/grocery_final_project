import 'package:flutter/material.dart';
import 'package:path/path.dart';

import '../base/colors/app_colors.dart';
import '../base/styles/app_styles.dart';

class TextFieldAddress extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final TextStyle? hintStyle;
  final double horizontal;
  final double vertical;
  final double contentHorizontal;
  final double contentVertical;
  final TextInputType inputType;

  const TextFieldAddress({
    super.key,
    required this.controller,
    this.hintText,
    this.hintStyle,
    required this.horizontal,
    required this.vertical,
    required this.contentHorizontal,
    required this.contentVertical,
    required this.inputType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontal,
        vertical: vertical,
      ),
      child: TextFormField(
        keyboardType: inputType,
        controller: controller,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: contentHorizontal, vertical: contentVertical),
          fillColor: Colors.grey[250],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          filled: true,
          hintText: hintText,
          hintStyle: hintStyle,
        ),
      ),
    );
  }
}
