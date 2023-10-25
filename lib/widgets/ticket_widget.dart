import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../base/colors/app_colors.dart';
import '../base/strings/app_strings.dart';
import '../base/styles/app_styles.dart';

class TicketWidget extends StatelessWidget {
  final String xPath;
  final String firstLineText;
  final String secondLineText;
  final String thirdLineText;
  final String fourthLineText;
  final String codeText;
  final Color backgroundColor;

  const TicketWidget({
    super.key,
    required this.xPath,
    required this.firstLineText,
    required this.secondLineText,
    required this.thirdLineText,
    required this.fourthLineText,
    required this.codeText,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                width: 284,
                height: 108,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2), // Màu của bóng
                      spreadRadius: 1, // Bán kính bóng
                      blurRadius: 10, // Độ mờ của bóng
                      offset:
                          Offset(-5, 5), // Độ lệch của bóng theo trục x và y
                    ),
                  ],
                  color: backgroundColor,
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              Container(
                width: 110,
                height: 108,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                  color: backgroundColor,
                ),
              ),
            ],
          ),
          Positioned(
            left: 273,
            top: -12,
            bottom: -12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.white,
                ),
              ],
            ),
          ),

          // x
          Positioned(
            top: 12,
            left: 12,
            bottom: 12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(xPath),
                SvgPicture.asset(xPath),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 12, left: 38),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  firstLineText,
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: "ExtraBold",
                    color: Colors.white,
                  ),
                ),
                Text(
                  secondLineText,
                  style: AppStyle.secondLineTextTicket,
                ),
                Text(
                  thirdLineText,
                  style: AppStyle.thirdLineTextTicket,
                ),
                Text(
                  fourthLineText,
                  style: AppStyle.fourthLineTextTicket,
                ),
              ],
            ),
          ),

          Positioned(
            top: 12,
            left: 256,
            bottom: 12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(xPath),
                SvgPicture.asset(xPath),
              ],
            ),
          ),

          Positioned(
            top: 12,
            left: 302,
            bottom: 12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(xPath),
                SvgPicture.asset(xPath),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              left: 302,
              top: 32,
            ),
            child: Column(
              children: [
                Text(
                  TicketWidgetString.code,
                  style: AppStyle.codeStyle,
                ),
                Text(
                  codeText,
                  style: AppStyle.codeTextDetail,
                ),
              ],
            ),
          ),

          Positioned(
            top: 12,
            left: 370,
            bottom: 12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(xPath),
                SvgPicture.asset(xPath),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
