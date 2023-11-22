import 'package:flutter/material.dart';
import 'package:sg_grocery_project/base/images/app_images.dart';
import 'package:sg_grocery_project/base/styles/app_styles.dart';
import 'package:sg_grocery_project/widgets/back_btn.dart';
import 'package:sg_grocery_project/widgets/custom_appbar.dart';
import 'package:sg_grocery_project/widgets/explore_items.dart';
import 'package:sg_grocery_project/widgets/name_page.dart';

import '../../base/colors/app_colors.dart';
import '../../base/strings/app_strings.dart';
import '../../widgets/bar_label.dart';
import '../fruits/fruits_page.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<StatefulWidget> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        textTitle: ExplorePageString.exploreTitle,
        backgroundColor: AppColors.whiteColor,
        textStyle: AppStyle.textBlackLabelPage,
      ),
      body:  SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Groceries
              BarLabel(
                firstLabel: ExplorePageString.groceries,
                secondLable: ExplorePageString.seeAll,

              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ExploreItems(
                      nameProduct: ExplorePageString.jaggeryPowder,
                      weightProduct: ExplorePageString.fiveHundredGram,
                      priceProduct: ExplorePageString.threeDollars,
                      imagePath: AppImage.groItem1,
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.tataArharDal,
                      weightProduct: ExplorePageString.oneKg,
                      priceProduct: ExplorePageString.fourDollars,
                      imagePath: AppImage.groItem2,
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.saffolaGoldOil,
                      weightProduct: ExplorePageString.fiveLtrAndOneLtr,
                      priceProduct: ExplorePageString.twentyDollar,
                      imagePath: AppImage.groItem3,
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.jaggeryPowder,
                      weightProduct: ExplorePageString.fiveHundredGram,
                      priceProduct: ExplorePageString.threeDollars,
                      imagePath: AppImage.groItem1,
                    ),
                  ],
                ),
              ),

              //Vegetables
              BarLabel(
                firstLabel: ExplorePageString.vegetables,
                secondLable: ExplorePageString.seeAll,

              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ExploreItems(
                      nameProduct: ExplorePageString.tomato,
                      weightProduct: ExplorePageString.oneKg,
                      priceProduct: ExplorePageString.twoDollars,
                      imagePath: AppImage.vegeItem1,
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.potato,
                      weightProduct: ExplorePageString.oneKg,
                      priceProduct: ExplorePageString.oneDollars,
                      imagePath: AppImage.vegeItem2,
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.onion,
                      weightProduct: ExplorePageString.oneKg,
                      priceProduct: ExplorePageString.twoDollars,
                      imagePath: AppImage.vegeItem3,
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.jaggeryPowder,
                      weightProduct: ExplorePageString.fiveHundredGram,
                      priceProduct: ExplorePageString.threeDollars,
                      imagePath: AppImage.vegeItem1,
                    ),
                  ],
                ),
              ),

              //Fruits
              BarLabel(
                firstLabel: ExplorePageString.fruits,
                secondLable: ExplorePageString.seeAll,
                onClickButton: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FruitsPage(),
                    ),
                  );
                },
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ExploreItems(
                      nameProduct: ExplorePageString.strawberry,
                      weightProduct: ExplorePageString.oneKg,
                      priceProduct: ExplorePageString.fourDollars,
                      imagePath: AppImage.fruitItem1,
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.banana,
                      weightProduct: ExplorePageString.oneKg,
                      priceProduct: ExplorePageString.twoDollars,
                      imagePath: AppImage.fruitItem2,
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.kiwifruit,
                      weightProduct: ExplorePageString.oneKg,
                      priceProduct: ExplorePageString.threeDollars,
                      imagePath: AppImage.fruitItem3,
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.jaggeryFruit,
                      weightProduct: ExplorePageString.fiveHundredGram,
                      priceProduct: ExplorePageString.threeDollars,
                      imagePath: AppImage.fruitItem1,
                    ),
                  ],
                ),
              ),

              //Dairy Products
              BarLabel(
                firstLabel: ExplorePageString.dairyProducts,
                secondLable: ExplorePageString.seeAll,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ExploreItems(
                      nameProduct: ExplorePageString.a2mateMilk,
                      weightProduct: ExplorePageString.pointFiveLtr,
                      priceProduct: ExplorePageString.twoDollars,
                      imagePath: AppImage.dailyItem1,
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.amulButter,
                      weightProduct: ExplorePageString.pointFiveLtr,
                      priceProduct: ExplorePageString.twoDollars,
                      imagePath: AppImage.dailyItem2,
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.sofitSoyaMilk,
                      weightProduct: ExplorePageString.pointFiveLtr,
                      priceProduct: ExplorePageString.twoDollars,
                      imagePath: AppImage.dailyItem3,
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.jaggeryPowder,
                      weightProduct: ExplorePageString.fiveHundredGram,
                      priceProduct: ExplorePageString.threeDollars,
                      imagePath: AppImage.dailyItem1,
                    ),
                  ],
                ),
              ),

              //Cookies
              BarLabel(
                firstLabel: ExplorePageString.bakeryItems,
                secondLable: ExplorePageString.seeAll,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ExploreItems(
                      nameProduct: ExplorePageString.parleRusk,
                      weightProduct: ExplorePageString.fiveHundredGram,
                      priceProduct: ExplorePageString.threeDollars,
                      imagePath: AppImage.bakeryItem1,
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.chocoMuffin,
                      weightProduct: ExplorePageString.sixPacks,
                      priceProduct: ExplorePageString.fourDollars,
                      imagePath: AppImage.bakeryItem2,
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.harsheysBar,
                      weightProduct: ExplorePageString.fourtyThreeGram,
                      priceProduct: ExplorePageString.threeDollars,
                      imagePath: AppImage.bakeryItem3,
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.brandBer,
                      weightProduct: ExplorePageString.fourtyThreeGram,
                      priceProduct: ExplorePageString.threeDollars,
                      imagePath: AppImage.bakeryItem1,
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
