import 'package:flutter/material.dart';
import 'package:sg_grocery_project/base/colors/app_colors.dart';

class FeaturedItems extends StatefulWidget {
  final String nameProduct;
  final String detailProduct;
  final String priceProduct;
  final String weightProduct;
  final String imagePath;
  final bgColor;

  const FeaturedItems({
    super.key,
    required this.nameProduct,
    required this.detailProduct,
    required this.priceProduct,
    required this.weightProduct,
    required this.imagePath,
    required this.bgColor,
  });

  @override
  State<StatefulWidget> createState() => _FeaturedItemsState();
}

class _FeaturedItemsState extends State<FeaturedItems> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 6, left: 15),
          child: Stack(
            children: [
              Container(
                width: 151,
                height: 191,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: widget.bgColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 14,
                    right: 14,
                    bottom: 14,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.nameProduct,
                      ),
                      Text(
                        widget.detailProduct,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.priceProduct,
                          ),
                          Text(
                            widget.weightProduct,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 17,
                  vertical: 14,
                ),
                child: SizedBox(
                  child: Image.asset(widget.imagePath),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
