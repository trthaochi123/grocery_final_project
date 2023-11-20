import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sg_grocery_project/widgets/button_normal.dart';

import '../base/colors/app_colors.dart';
import '../base/styles/app_styles.dart';
import 'outline_button.dart';

class MyOrderWidget extends StatefulWidget {
  final String image1;
  final String image2;
  final String title;
  final String? subTitle;
  final bool hasOrder;

  const MyOrderWidget({
    super.key,
    required this.image1,
    required this.image2,
    required this.title,
    this.subTitle,
    this.hasOrder = false,
  });

  @override
  State<MyOrderWidget> createState() => _MyOrderWidget();
}

class _MyOrderWidget extends State<MyOrderWidget> {
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
                height: 180,
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
                  const SizedBox(
                    width: 100,
                  ),
                  if (widget.hasOrder)
                    ButtonNormalWidget(
                      onClickButton: () {},
                      textButton: "Track Order",
                      heightButton: 36,
                      widthButton: 120,
                      textStyle: TextStyle(fontFamily: "Medium", fontSize: 12),
                      backgroundColorButton: AppColors.greenMainColor,
                    ),
                  const SizedBox(
                    width: 24,
                  ),

                  // if has order == false then display this
                  if (widget.hasOrder == false)
                    const Text(
                      "Get Invoice",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: AppColors.greenMainColor,
                      ),
                    ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),

              Row(
                children: [
                  if (widget.hasOrder)
                    const Text(
                      "Edit Order",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: AppColors.greenMainColor,
                      ),
                    ),
                  const SizedBox(
                    width: 200,
                  ),

                  // if has order
                  if (widget.hasOrder == true)
                    Text(
                      "Get Invoice",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: AppColors.greenMainColor,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
