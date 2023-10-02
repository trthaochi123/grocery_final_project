import 'package:flutter/material.dart';

class NamePageLable extends StatelessWidget {
  final String namePageLable;

  const NamePageLable({super.key, required this.namePageLable});

  @override
  Widget build(BuildContext context) {
    return Text(
      namePageLable,
      style: const TextStyle(fontSize: 22, fontFamily: "SemiBold"),
    );
  }
}
