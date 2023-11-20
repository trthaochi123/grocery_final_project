import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sg_grocery_project/widgets/button_normal.dart';

import '../base/colors/app_colors.dart';
import '../base/styles/app_styles.dart';
import 'outline_button.dart';

class MyOrderWidget2 extends StatefulWidget {
  final String image1;
  final String image2;
  final String title;
  final String? subTitle;

  const MyOrderWidget2({
    super.key,
    required this.image1,
    required this.image2,
    required this.title,
    this.subTitle,
  });

  @override
  State<MyOrderWidget2> createState() => _MyOrderWidget2();
}

class _MyOrderWidget2 extends State<MyOrderWidget2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              SvgPicture.asset("assets/icons/ic_wallet_ellip.svg"),
              Container(
                width: 2,
                height: 160,
                color: AppColors.greenMainColor,
              )
            ],
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 348,
                height: 97,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Image.asset(widget.image1),
                    SizedBox(
                      width: 12,
                    ),
                    SvgPicture.asset(widget.image2),
                    SizedBox(
                      width: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.title),
                          SizedBox(
                            height: 8,
                          ),
                          Text(widget.subTitle ?? ''),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  OutlinedButtonWidget(
                    textButton: "View order details",
                    textStyle: AppStyle.buyOneButton,
                    heightButton: 36,
                    widthButton: 128,
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Text(
                    "Get Invoice",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: AppColors.greenMainColor,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
