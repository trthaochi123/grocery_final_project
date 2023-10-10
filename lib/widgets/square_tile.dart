import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  final String textIcon;

  const SquareTile({
    super.key,
    required this.imagePath,
    required this.textIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.symmetric(
          horizontal: 36,
          vertical: 6,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              height: 30,
            ),
            const SizedBox(width: 10),
            Text(textIcon)
          ],
        ));
  }
}
