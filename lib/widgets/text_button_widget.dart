import 'package:flutter/material.dart';
class TextButtonWidget extends StatelessWidget{
  final String textButtonName;
  final Function() onClick;

  const TextButtonWidget({super.key, required this.textButtonName, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onClick,
        child: Text(
          textButtonName,
          style: const TextStyle(
            fontSize: 16,
              color: Colors.black, fontWeight: FontWeight.bold),
        )) ;
  }

}