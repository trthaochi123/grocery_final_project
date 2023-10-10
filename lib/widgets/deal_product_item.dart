import 'package:flutter/material.dart';
import 'package:sg_grocery_project/base/colors/app_colors.dart';

import '../base/styles/app_styles.dart';

class DealItems extends StatefulWidget {
  final String textLabel;
  final String detailItem;
  final String imagePath;

  const DealItems({
    super.key,
    required this.textLabel,
    required this.detailItem,
    required this.imagePath,
  });

  @override
  State<StatefulWidget> createState() => _DealItemsState();
}

class _DealItemsState extends State<DealItems> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 6, left: 15),
          child: Stack(
            children: [
              Container(
                width: 156,
                height: 165,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: AppColors.greenItems,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 11),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.textLabel,
                            style: AppStyle.textLabelDealPrd,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.detailItem,
                            style: AppStyle.detailItem,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 33,
                  vertical: 15,
                ),
                child: SizedBox(
                  child: Image.asset(widget.imagePath),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
