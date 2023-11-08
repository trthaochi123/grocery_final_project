import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../base/colors/app_colors.dart';

class WalletWidget extends StatefulWidget {
  final String date;
  final String title;
  final String subTitle;
  final String price;
  final Color colorPrice;

  const WalletWidget({
    super.key,
    required this.date,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.colorPrice,
  });

  @override
  State<WalletWidget> createState() => _WalletWidgetState();
}

class _WalletWidgetState extends State<WalletWidget> {
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
                height: 132,
                color: AppColors.greenMainColor,
              )
            ],
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.date,
                style: TextStyle(fontSize: 18, fontFamily: "Regular"),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: 368,
                height: 97,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 18, top: 24, bottom: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.title,
                            style: TextStyle(
                              fontFamily: "SemiBold",
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            widget.subTitle,
                            style: TextStyle(fontSize: 14, fontFamily: "Light"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 28),
                      child: Text(
                        widget.price,
                        style: TextStyle(
                          fontSize: 20,
                          color: widget.colorPrice,
                          fontFamily: "SemiBold",
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
