import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sg_grocery_project/base/colors/app_colors.dart';
import 'package:sg_grocery_project/base/styles/styles.dart';
import 'package:sg_grocery_project/widgets/app_icon.dart';
import 'package:sg_grocery_project/widgets/button_normal.dart';
import 'package:sg_grocery_project/widgets/log_reg_button_widget.dart';
import 'package:sg_grocery_project/widgets/custom_appbar.dart';
import 'package:sg_grocery_project/widgets/outline_button.dart';

import '../../base/images/images.dart';
import '../../widgets/back_btn.dart';
import '../../widgets/name_page.dart';

class FruitsPage extends StatefulWidget {
  const FruitsPage({super.key});

  @override
  State<StatefulWidget> createState() => _FruitsPageState();
}

class _FruitsPageState extends State<FruitsPage> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Strawberry",
      "price2": "(1 kg)",
      "price": "\$4",
      "images": "assets/images/img_fruits_item1.png",
      "ic_heart": "assets/icons/ic_fruits_heart.svg",
    },
    {
      "title": "Banana",
      "price2": "(1 kg)",
      "price": "\$4",
      "images": "assets/images/img_fruits_item2.png",
      "ic_heart": "assets/icons/ic_fruits_heart2.svg",
    },
    {
      "title": "KiwiFruit",
      "price2": "(3 unit)",
      "price": "\$4",
      "images": "assets/images/img_fruits_item3.png",
      "ic_heart": "assets/icons/ic_fruits_heart.svg",
    },
    {
      "title": "Grapes",
      "price2": "(1 kg)",
      "price": "\$4",
      "images": "assets/images/img_fruits_item4.png",
      "ic_heart": "assets/icons/ic_fruits_heart.svg",
    },
    {
      "title": "Watermelon",
      "price2": "(1 kg)",
      "price": "\$4",
      "images": "assets/images/img_fruits_item5.png",
      "ic_heart": "assets/icons/ic_fruits_heart.svg",
    },
    {
      "title": "Orange",
      "price2": "(1 kg)",
      "price": "\$4",
      "images": "assets/images/img_fruits_item6.png",
      "ic_heart": "assets/icons/ic_fruits_heart.svg",
    },
    {
      "title": "Guava",
      "price2": "(1 kg)",
      "price": "\$4",
      "images": "assets/images/img_fruits_item7.png",
      "ic_heart": "assets/icons/ic_fruits_heart.svg",
    },
    {
      "title": "Avocado",
      "price2": "(2 pcs)",
      "price": "\$4",
      "images": "assets/images/img_fruits_item8.png",
      "ic_heart": "assets/icons/ic_fruits_heart.svg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
          textTitle: "Fruits",
          backgroundColor: AppColors.greenMainColor,
          iconPath: "assets/icons/ic_back_white.svg",
          textStyle: AppStyle.textWhiteLabelPage),
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: Container(
                      height: 80,
                      decoration:
                          BoxDecoration(color: AppColors.greenMainColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28, bottom: 0),
                    child: Container(
                      height: 804,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 50),
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        mainAxisExtent: 236,
                      ),
                      itemCount: gridMap.length,
                      itemBuilder: (_, index) {
                        return Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: AppColors.greenItems,
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 144, top: 4),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                          "${gridMap.elementAt(index)['ic_heart']}"),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 16, left: 38),
                                    child: Image.asset(
                                      "${gridMap.elementAt(index)['images']}",
                                      height: 132,
                                      width: 110,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8, top: 138),
                                    child: Row(
                                      children: [
                                        Text(
                                          "${gridMap.elementAt(index)['title']}",
                                          style: const TextStyle(
                                              fontFamily: "SemiBold",
                                              fontSize: 18,
                                              color: AppColors.greyFruits),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "${gridMap.elementAt(index)['price2']}",
                                          style: const TextStyle(
                                              fontFamily: "SemiBold",
                                              fontSize: 14,
                                              color: AppColors.greyFruits),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 154, left: 8),
                                    child: Row(
                                      children: [
                                        Text(
                                          "${gridMap.elementAt(index)['price']}",
                                          style: const TextStyle(
                                              fontFamily: "SemiBold",
                                              fontSize: 18,
                                              color: AppColors.greenMainColor),
                                        ),
                                        const SizedBox(
                                          width: 54,
                                        ),
                                        Row(
                                          children: [
                                            IconButton(
                                              onPressed: () {},
                                              icon: SvgPicture.asset(
                                                  'assets/icons/ic_fruits_minor.svg'),
                                            ),
                                            const Text(
                                              "1",
                                              style: TextStyle(
                                                  fontFamily: "SemiBold",
                                                  fontSize: 18,
                                                  color:
                                                      AppColors.greenMainColor),
                                            ),
                                            IconButton(
                                              onPressed: () {},
                                              icon: SvgPicture.asset(
                                                  'assets/icons/ic_fruits_plus.svg'),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),

                                  //BTN
                                    Padding(
                                    padding: EdgeInsets.only(top: 198, left: 8),
                                    child: Row(
                                      children: [
                                        ButtonNormalWidget(
                                          textButton: "Subscribe",
                                          heightButton: 24,
                                          widthButton: 88,
                                          textStyle: TextStyle(fontSize: 8,), onClickButton: () {},
                                        ),
                                        const SizedBox(width: 4,),
                                        const OutlinedButtonWidget(
                                            textButton: "Buy Once",
                                            textStyle: TextStyle(fontSize: 8),
                                            heightButton: 24,
                                            widthButton: 86),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
