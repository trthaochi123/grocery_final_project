import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sg_grocery_project/base/colors/app_colors.dart';
import 'package:sg_grocery_project/widgets/button_normal.dart';
import 'package:sg_grocery_project/widgets/custom_appbar.dart';
import 'package:sg_grocery_project/widgets/outline_button.dart';
import 'package:sg_grocery_project/widgets/related_prd_detail_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../base/images/app_images.dart';
import '../../base/strings/app_strings.dart';
import '../../base/styles/app_styles.dart';

class DetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DetailPage();
}

class _DetailPage extends State<DetailPage> {
  List<String> assets = [
    AppImage.prdDetail1,
    AppImage.prdDetail1,
  ];

  int currentIndex = 0;
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppbar(
        leading: SizedBox(
          height: 4,
          width: 4,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset("assets/icons/ic_back_white.svg"),
          ),
        ),
        textTitle: "Payment",
        backgroundColor: AppColors.greenMainColor,
        textStyle: AppStyle.textWhiteLabelPage,
        alignment: Alignment.centerLeft,
      ),
      backgroundColor: AppColors.whiteColor,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 140,
                decoration: BoxDecoration(
                  color: AppColors.greenMainColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(28),
                    bottomLeft: Radius.circular(28),
                  ),
                ),
              ),

              // Product Carousel
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 190,
                        width: MediaQuery.of(context).size.width,
                        child: PageView.builder(
                          itemCount: assets.length,
                          controller: _controller,
                          onPageChanged: (value) {
                            //value: tham số đại diện cho chỉ số của trang mới được chọn
                            currentIndex = value;
                            setState(
                              () {},
                            );
                          },
                          // itemBuider Xây dựng và trả về widget tương ứng với index
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.all(1),
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Image.asset(
                                assets[index],
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SmoothPageIndicator(
                        controller: _controller,
                        count: assets.length,
                        effect: const ExpandingDotsEffect(
                          activeDotColor: AppColors.greenMainColor,
                          dotColor: AppColors.greyColor,
                          dotHeight: 6,
                          dotWidth: 12,
                          spacing: 4,
                          expansionFactor: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              height: 587,
              child: ListView(
                children: [
                  // Label Product
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Green Apple",
                        style: TextStyle(fontFamily: "SemiBold", fontSize: 24),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              AppSvg.icMinorFruitsPage,
                              height: 24,
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
                              height: 24,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 8,
                  ),

                  // Special price
                  const Text(
                    "Special price",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Regular",
                        color: AppColors.greenMainColor),
                  ),

                  SizedBox(
                    height: 16,
                  ),

                  // Price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "\$2",
                        style: TextStyle(fontFamily: "SemiBold", fontSize: 24),
                      ),
                      Text(
                        "(42% off)",
                        style: TextStyle(
                            fontFamily: "SemiBold",
                            fontSize: 16,
                            color: AppColors.greenMainColor),
                      )
                    ],
                  ),

                  SizedBox(
                    height: 24,
                  ),

                  // Description
                  Text(
                    "Description",
                    style: TextStyle(fontFamily: "SemiBold", fontSize: 20),
                  ),

                  SizedBox(
                    height: 12,
                  ),

                  Text(
                    "Green apples have less sugar and carbs, and more fiber, protein, potassium, iron, and vitamin K, taking the lead as a healthier variety, although the differences are ever so slight.",
                    style: TextStyle(fontFamily: "ExtraLight", fontSize: 14),
                  ),

                  SizedBox(
                    height: 32,
                  ),

                  // Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonNormalWidget(
                        textButton: FruitsPageString.subscribe,
                        heightButton: 36,
                        widthButton: 106,
                        textStyle:
                            TextStyle(fontSize: 14, fontFamily: "SemiBold"),
                        onClickButton: () {},
                        backgroundColorButton: AppColors.greenMainColor,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      OutlinedButtonWidget(
                        textButton: FruitsPageString.buyOne,
                        textStyle:
                            TextStyle(fontSize: 14, fontFamily: "SemiBold"),
                        heightButton: 36,
                        widthButton: 106,
                      )
                    ],
                  ),

                  SizedBox(
                    height: 32,
                  ),

                  // Related Items
                  Text(
                    "Related items",
                    style: TextStyle(fontFamily: "SemiBold", fontSize: 20),
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  Row(
                    children: const [
                      RelatedPrdDetailWidget(
                        backgroundColor: AppColors.relatedPrdDetailAccentOrange,
                        labelColor: AppColors.relatedPrdDetailOrange,
                        image: "assets/images/img_prd_detail_1.png",
                        namePrd: "Pinapple",
                      ),

                      SizedBox(width: 16,),

                      RelatedPrdDetailWidget(
                        backgroundColor: AppColors.relatedPrdDetailAccentRed,
                        labelColor: AppColors.relatedPrdDetailRed,
                        image: "assets/images/img_prd_detail_2.png",
                        namePrd: "Strawberry",
                      ),

                      SizedBox(width: 16,),

                      RelatedPrdDetailWidget(
                        backgroundColor: AppColors.relatedPrdDetailAccentGreen,
                        labelColor: AppColors.relatedPrdDetailGreen,
                        image: "assets/images/img_prd_detail_3.png",
                        namePrd: "Grapes",
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
