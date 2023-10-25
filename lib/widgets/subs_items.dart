import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sg_grocery_project/base/colors/app_colors.dart';

import '../base/images/app_images.dart';
import '../base/styles/app_styles.dart';

class SubsItem extends StatefulWidget {
  final String imagePath;
  final String namePrd;
  final String weightPrd;
  final String realityPrice;
  final double width;
  final double height;

  const SubsItem({
    super.key,
    required this.imagePath,
    required this.namePrd,
    required this.weightPrd,
    required this.realityPrice,
    required this.width,
    required this.height,
  });

  @override
  State<StatefulWidget> createState() => _SubsItemState();
}

class _SubsItemState extends State<SubsItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 119,
      width: 396,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), // Màu của bóng
            spreadRadius: 1, // Bán kính bóng
            blurRadius: 10, // Độ mờ của bóng
            offset: Offset(-5, 5), // Độ lệch của bóng theo trục x và y
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  height: 89,
                  width: 89,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    widget.imagePath,
                    width: widget.width,
                    height: widget.height,
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 14,
                    left: 12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.namePrd,
                        style: AppStyle.namePrd,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        widget.weightPrd,
                        style: AppStyle.weightPrd,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        widget.realityPrice,
                        style: AppStyle.realityPrice,
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 232, top: 12),
                  child: Text("Qty: 2"),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 80, left: 132),
                      child: Container(
                        width: 159,
                        height: 43,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          color: AppColors.greenMainColor,
                        ),
                      ),
                    ),
                     Padding(
                      padding: EdgeInsets.only(top: 88, left: 148),
                      child: Row(
                        children: [
                          Text("M"),
                          SizedBox(width: 8,),
                          Text("T"),
                          SizedBox(width: 8,),
                          Text("W"),
                          SizedBox(width: 8,),
                          Text("T"),
                          SizedBox(width: 12,),
                          Text("F"),
                          SizedBox(width: 12,),
                          Text("S"),
                          SizedBox(width: 12,),
                          Text("S"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 108, left: 152),
                      child: Row(
                        children: List.generate(
                          6,
                              (index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 16),
                              child: SvgPicture.asset(
                                  "assets/icons/ic_fav_dot.svg"),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
