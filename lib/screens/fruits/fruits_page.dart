import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sg_grocery_project/base/colors/app_colors.dart';
import 'package:sg_grocery_project/base/strings/app_strings.dart';
import 'package:sg_grocery_project/base/styles/app_styles.dart';
import 'package:sg_grocery_project/widgets/app_icon.dart';
import 'package:sg_grocery_project/widgets/button_normal.dart';
import 'package:sg_grocery_project/widgets/log_reg_button_widget.dart';
import 'package:sg_grocery_project/widgets/custom_appbar.dart';
import 'package:sg_grocery_project/widgets/outline_button.dart';

import '../../base/images/app_images.dart';
import '../../widgets/back_btn.dart';
import '../../widgets/name_page.dart';

class FruitsPage extends StatefulWidget {
  const FruitsPage({super.key});

  @override
  State<StatefulWidget> createState() => _FruitsPageState();
}

class _FruitsPageState extends State<FruitsPage> {
  List<bool> isSubscribePressed = List.generate(8, (index) => true);

  bool isButtonPressed = true;

  final List<Map<String, dynamic>> gridMap = [
    {
      "title": FruitsPageString.strawberry,
      "price2": FruitsPageString.oneKg,
      "price": FruitsPageString.fourDollars,
      "images": "assets/images/img_fruits_item1.png",
      "ic_heart": "assets/icons/ic_fruits_heart.svg",
    },
    {
      "title": FruitsPageString.banana,
      "price2": FruitsPageString.oneKg,
      "price": FruitsPageString.fourDollars,
      "images": "assets/images/img_fruits_item2.png",
      "ic_heart": "assets/icons/ic_fruits_heart2.svg",
    },
    {
      "title": FruitsPageString.kiwiFruit,
      "price2": FruitsPageString.threeUnit,
      "price": FruitsPageString.fourDollars,
      "images": "assets/images/img_fruits_item3.png",
      "ic_heart": "assets/icons/ic_fruits_heart.svg",
    },
    {
      "title": FruitsPageString.grapes,
      "price2": FruitsPageString.oneKg,
      "price": FruitsPageString.fourDollars,
      "images": "assets/images/img_fruits_item4.png",
      "ic_heart": "assets/icons/ic_fruits_heart.svg",
    },
    {
      "title": FruitsPageString.watermelon,
      "price2": FruitsPageString.oneKg,
      "price": FruitsPageString.fourDollars,
      "images": "assets/images/img_fruits_item5.png",
      "ic_heart": "assets/icons/ic_fruits_heart.svg",
    },
    {
      "title": FruitsPageString.orange,
      "price2": FruitsPageString.oneKg,
      "price": FruitsPageString.fourDollars,
      "images": "assets/images/img_fruits_item6.png",
      "ic_heart": "assets/icons/ic_fruits_heart.svg",
    },
    {
      "title": FruitsPageString.guava,
      "price2": FruitsPageString.oneKg,
      "price": FruitsPageString.fourDollars,
      "images": "assets/images/img_fruits_item7.png",
      "ic_heart": "assets/icons/ic_fruits_heart.svg",
    },
    {
      "title": FruitsPageString.avocado,
      "price2": FruitsPageString.twoPacks,
      "price": FruitsPageString.fourDollars,
      "images": "assets/images/img_fruits_item8.png",
      "ic_heart": "assets/icons/ic_fruits_heart.svg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        textTitle: FruitsPageString.fruitsTitle,
        backgroundColor: AppColors.greenMainColor,
        textStyle: AppStyle.textWhiteLabelPage,
      ),
      backgroundColor: AppColors.greenMainColor,
      body: Container(
        margin: EdgeInsets.only(top: 20),
        height: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                mainAxisExtent: 236,
              ),
              itemCount: gridMap.length,
              itemBuilder: (_, index) {
                bool isPressed = isSubscribePressed[index];

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
                            padding: const EdgeInsets.only(left: 144, top: 4),
                            child: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  "${gridMap.elementAt(index)['ic_heart']}"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16, left: 38),
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
                                          color: AppColors.greenMainColor),
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
                                  textButton: FruitsPageString.subscribe,
                                  heightButton: 24,
                                  widthButton: 88,
                                  textStyle: const TextStyle(
                                    fontSize: 11,
                                  ),
                                  onClickButton: () {
                                    setState(
                                      () {
                                        isSubscribePressed[index] = !isPressed;
                                      },
                                    );
                                  },
                                  backgroundColorButton:
                                      isPressed ? Colors.green : Colors.grey,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const OutlinedButtonWidget(
                                    textButton: FruitsPageString.buyOne,
                                    textStyle: TextStyle(fontSize: 11),
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
        ),
      ),
    );
  }
}
