import 'package:flutter/material.dart';
import 'package:sg_grocery_project/base/colors/app_colors.dart';

class ProductItems extends StatefulWidget {
  final String nameProduct;
  final String priceProduct;
  final String imagePath;
  final String numberSale;
  final String offSale;

  const ProductItems(
      {super.key,
      required this.nameProduct,
      required this.priceProduct,
      required this.imagePath,
      required this.numberSale,
      required this.offSale});

  @override
  State<StatefulWidget> createState() => _ProductItemsState();
}

class _ProductItemsState extends State<ProductItems> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 6, left: 15),
          child: Stack(
            children: [
              Container(
                width: 162,
                height: 192,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: AppColors.greenItems,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20, left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.nameProduct,
                        style: const TextStyle(
                            color: AppColors.textItems, fontFamily: "Medium"),
                      ),
                      Text(
                        widget.priceProduct,
                        style: const TextStyle(
                          color: AppColors.textItems,
                          fontFamily: "SemiBold",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
                child: SizedBox(
                  child: Image.asset(widget.imagePath),
                ),
              ),
              Positioned(
                left: 0,
                top: 13,
                child: Container(
                  width: 60,
                  height: 41,
                  decoration: const BoxDecoration(
                    color: AppColors.greenMainColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          widget.numberSale,
                          style: const TextStyle(
                            fontSize: 14,
                            color: AppColors.whiteColor,
                            fontFamily: "SemiBold",
                          ),
                        ),
                        Text(
                          widget.offSale,
                          style: const TextStyle(
                            fontSize: 14,
                            color: AppColors.whiteColor,
                            fontFamily: "SemiBold",
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
