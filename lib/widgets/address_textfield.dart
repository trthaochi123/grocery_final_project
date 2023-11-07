import 'package:flutter/material.dart';

import '../base/colors/app_colors.dart';


class AddressTextField extends StatelessWidget {
  final String textFieldName;
  final TextEditingController? controller;
  const AddressTextField({
    super.key,
    required this.textFieldName,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade200,
        hintStyle: TextStyle(
          fontSize: 18,
          color: Colors.grey.shade400,
        ),
        hintText: textFieldName,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none),
        contentPadding: const EdgeInsets.only(top: 20, bottom: 20, left: 20),
      ),
    );
  }
}
