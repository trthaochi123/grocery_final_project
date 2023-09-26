import 'package:flutter/material.dart';

import '../base/colors/app_colors.dart';

class CategoryItems extends StatefulWidget {
  final String imagePath;
  final String textLabel;

  const CategoryItems(
      {super.key, required this.imagePath, required this.textLabel});

  @override
  State<StatefulWidget> createState() => _CategoryItemsState();
}

class _CategoryItemsState extends State<CategoryItems> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 30, right: 3),
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 87,
                height: 88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: AppColors.greenItems,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  width: 87,
                  height: 38,
                  decoration: const BoxDecoration(
                    color: AppColors.greenMainColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.textLabel,
                        style: const TextStyle(
                            fontFamily: "SemiBold",
                            color: AppColors.whiteColor),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -30,
                child: SizedBox(
                  width: 85,
                  height: 75,
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
