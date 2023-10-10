import 'package:flutter/material.dart';
import 'package:sg_grocery_project/base/styles/app_styles.dart';

import 'text_field_widget.dart';

class InputLogin extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String title;

  const InputLogin({
    super.key,
    required this.controller,
    required this.hintText,
    required this.title,
  });

  @override
  State<StatefulWidget> createState() => _InputLoginState();
}

class _InputLoginState extends State<InputLogin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: AppStyle.titleInputField,
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
        MyTextField(
          controller: widget.controller,
          hintText: widget.hintText,
        ),
      ],
    );
  }
}
