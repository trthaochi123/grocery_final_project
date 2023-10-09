import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sg_grocery_project/base/colors/app_colors.dart';
import 'package:sg_grocery_project/base/images/app_images.dart';

class ExploreItems extends StatefulWidget {
  final String nameProduct;
  final String weightProduct;
  final String priceProduct;
  final String imagePath;

  const ExploreItems(
      {super.key,
      required this.nameProduct,
      required this.weightProduct,
      required this.priceProduct,
      required this.imagePath});

  @override
  State<StatefulWidget> createState() => _ExploreItemsState();
}

class _ExploreItemsState extends State<ExploreItems> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 6, left: 15),
          child: Stack(
            children: [
              Container(
                width: 120,
                height: 148,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: AppColors.greenItems,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 8, bottom: 6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.nameProduct,
                        style: const TextStyle(fontSize: 12, fontFamily: "Medium"),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        widget.weightProduct,
                        style: TextStyle(fontSize: 12, fontFamily: "ExtraLight"),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        widget.priceProduct,
                        style: TextStyle(fontSize: 12, fontFamily: "SemiBold"),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 102, left: 70),
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(AppSvg.icPlusLargePath),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                child: SizedBox(
                  child: Image.asset(widget.imagePath, ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
