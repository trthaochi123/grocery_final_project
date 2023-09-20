import 'package:flutter/material.dart';

import '../../base/styles/styles.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;


  const MyTextField(
      {super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextField(
            controller: controller,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(9)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(9)
              ),
              hintText: hintText,
              hintStyle: AppStyle.hintTextStyle,
              ),
            ),
          );
  }


}