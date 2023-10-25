import 'package:flutter/material.dart';
import 'package:path/path.dart';

import '../base/colors/app_colors.dart';
import '../base/styles/app_styles.dart';

class TextFieldAddress extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final TextStyle hintStyle;

  const TextFieldAddress({
    super.key,
    required this.controller,
    this.hintText, required this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 6,
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
