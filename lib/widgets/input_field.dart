import 'package:flutter/material.dart';

import '../screens/login/my_textfield.dart';

class InputLogin extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String title;

  const InputLogin(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.title});

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
              const SizedBox(height: 20),
              Text(widget.title,
                  style: const TextStyle(fontSize: 18, fontFamily: "Medium")),
              const SizedBox(height: 35),
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
