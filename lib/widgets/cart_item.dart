import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sg_grocery_project/base/colors/app_colors.dart';

import '../base/images/app_images.dart';
import '../base/styles/app_styles.dart';

class CartItem extends StatefulWidget {
  final String imagePath;
  final String namePrd;
  final String weightPrd;
  final String realityPrice;
  final String pricePrd;
  final double width;
  final double height;

  const CartItem({
    super.key,
    required this.imagePath,
    required this.namePrd,
    required this.weightPrd,
    required this.realityPrice,
    required this.pricePrd,
    required this.width,
    required this.height,
  });

  @override
  State<StatefulWidget> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
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
                      Row(
                        children: [
                          Text(
                            widget.realityPrice,
                            style: AppStyle.realityPrice,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            widget.pricePrd,
                            style: AppStyle.pricePrd,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 238),
                      child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(AppSvg.icCartClose),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 4),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              AppSvg.icMinorCart,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "1",
                            style: AppStyle.amountPrd,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              AppSvg.icPlusCart,
                            ),
                          ),
                        ],
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
