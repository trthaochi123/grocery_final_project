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

class FavPage extends StatefulWidget {
  const FavPage({super.key});

  @override
  State<StatefulWidget> createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  List<bool> isSubscribePressed = List.generate(8, (index) => true);

  bool isButtonPressed = true;

  final List<Map<String, dynamic>> gridMap = [
    {
      "title": FruitsPageString.banana,
      "price2": FruitsPageString.oneKg,
      "price": FruitsPageString.fourDollars,
      "images": AppImage.fruitPageItem2,
      "ic_heart": AppSvg.icHeartFruitsPage2,
    },
    {
      "title": FruitsPageString.banana,
      "price2": FruitsPageString.oneKg,
      "price": FruitsPageString.fourDollars,
      "images": AppImage.fruitPageItem2,
      "ic_heart": AppSvg.icHeartFruitsPage2,
    },
    {
      "title": FruitsPageString.banana,
      "price2": FruitsPageString.oneKg,
      "price": FruitsPageString.fourDollars,
      "images": AppImage.fruitPageItem2,
      "ic_heart": AppSvg.icHeartFruitsPage2,
    },
    {
      "title": FruitsPageString.banana,
      "price2": FruitsPageString.oneKg,
      "price": FruitsPageString.fourDollars,
      "images": AppImage.fruitPageItem2,
      "ic_heart": AppSvg.icHeartFruitsPage2,
    },
    {
      "title": FruitsPageString.banana,
      "price2": FruitsPageString.oneKg,
      "price": FruitsPageString.fourDollars,
      "images": AppImage.fruitPageItem2,
      "ic_heart": AppSvg.icHeartFruitsPage2,
    },
    {
      "title": FruitsPageString.banana,
      "price2": FruitsPageString.oneKg,
      "price": FruitsPageString.fourDollars,
      "images": AppImage.fruitPageItem2,
      "ic_heart": AppSvg.icHeartFruitsPage2,
    },
    {
      "title": FruitsPageString.banana,
      "price2": FruitsPageString.oneKg,
      "price": FruitsPageString.fourDollars,
      "images": AppImage.fruitPageItem2,
      "ic_heart": AppSvg.icHeartFruitsPage2,
    },
    {
      "title": FruitsPageString.banana,
      "price2": FruitsPageString.oneKg,
      "price": FruitsPageString.fourDollars,
      "images": AppImage.fruitPageItem2,
      "ic_heart": AppSvg.icHeartFruitsPage2,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        textTitle: FavPageString.favTitle,
        backgroundColor: AppColors.greenMainColor,
        textStyle: AppStyle.textWhiteLabelPage,
      ),
      backgroundColor: AppColors.greenMainColor,
      body: Container(
        margin: const EdgeInsets.only(top: 10),
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
            padding: const EdgeInsets.all(16),
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

                return Flexible(
                  child: Container(
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
                              padding: const EdgeInsets.only(left: 130, top: 4),
                              child: IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  "${gridMap.elementAt(index)['ic_heart']}",
                                ),
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
                              padding: const EdgeInsets.only(left: 8, top: 138),
                              child: Row(
                                children: [
                                  Text(
                                    "${gridMap.elementAt(index)['title']}",
                                    style: AppStyle.titleFruits,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "${gridMap.elementAt(index)['price2']}",
                                    style: AppStyle.price2Fruits,
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 8, top: 156),
                              child: Row(
                                children: [
                                  Text(
                                    "${gridMap.elementAt(index)['price']}",
                                    style: AppStyle.titleFruits,
                                  ),
                                  const SizedBox(
                                    width: 38,
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset(
                                          AppSvg.icMinorFruitsPage,
                                        ),
                                      ),
                                      Text(
                                        "1",
                                        style: AppStyle.amount,
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset(
                                          AppSvg.icPlusFruitsPage,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            //BTN
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 198, left: 8),
                                child: Row(
                                  children: [
                                    ButtonNormalWidget(
                                      textButton: FruitsPageString.subscribe,
                                      heightButton: 24,
                                      widthButton: 80,
                                      textStyle: AppStyle.subscribeButton,
                                      onClickButton: () {
                                        setState(
                                          () {
                                            isSubscribePressed[index] =
                                                !isPressed;
                                          },
                                        );
                                      },
                                      backgroundColorButton: isPressed
                                          ? Colors.grey
                                          : Colors.green,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    OutlinedButtonWidget(
                                      textButton: FruitsPageString.buyOne,
                                      textStyle: AppStyle.buyOneButton,
                                      heightButton: 24,
                                      widthButton: 72,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
