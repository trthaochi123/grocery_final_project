import 'package:flutter/material.dart';

import '../base/colors/app_colors.dart';

class RelatedPrdDetailWidget extends StatefulWidget {
  final Color backgroundColor;
  final Color labelColor;
  final String image;
  final String namePrd;

  const RelatedPrdDetailWidget({
    super.key,
    required this.backgroundColor,
    required this.labelColor,
    required this.image,
    required this.namePrd,
  });

  @override
  State<RelatedPrdDetailWidget> createState() => _RelatedPrdDetailWidgetState();
}

class _RelatedPrdDetailWidgetState extends State<RelatedPrdDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 122,
          height: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: widget.backgroundColor),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 120),
          child: Container(
            width: 122,
            height: 50,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: widget.labelColor,
            ),
            child: Center(
              child: Text(
                widget.namePrd,
                style: const TextStyle(
                    fontFamily: "SemiBold",
                    fontSize: 16,
                    color: AppColors.whiteColor),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
          child: Image.asset(widget.image),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100, left: 102),
          child: Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(12))),
            child: Image.asset("assets/images/img_prd_detail_plus.png"),
          ),
        )
      ],
    );
  }
}
