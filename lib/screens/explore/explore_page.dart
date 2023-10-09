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
      body: const SizedBox(
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
                      imagePath: 'assets/images/img_gro_item1.png',
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.tataArharDal,
                      weightProduct: ExplorePageString.oneKg,
                      priceProduct: ExplorePageString.fourDollars,
                      imagePath: 'assets/images/img_gro_item2.png',
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.saffolaGoldOil,
                      weightProduct: ExplorePageString.fiveLtrAndOneLtr,
                      priceProduct: ExplorePageString.twentyDollar,
                      imagePath: 'assets/images/img_gro_item3.png',
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.jaggeryPowder,
                      weightProduct: ExplorePageString.fiveHundredGram,
                      priceProduct: ExplorePageString.threeDollars,
                      imagePath: 'assets/images/img_gro_item1.png',
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
                      imagePath: 'assets/images/img_vege_item1.png',
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.potato,
                      weightProduct: ExplorePageString.oneKg,
                      priceProduct: ExplorePageString.oneDollars,
                      imagePath: 'assets/images/img_vege_item2.png',
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.onion,
                      weightProduct: ExplorePageString.oneKg,
                      priceProduct: ExplorePageString.twoDollars,
                      imagePath: 'assets/images/img_vege_item3.png',
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.jaggeryPowder,
                      weightProduct: ExplorePageString.fiveHundredGram,
                      priceProduct: ExplorePageString.threeDollars,
                      imagePath: 'assets/images/img_vege_item1.png',
                    ),
                  ],
                ),
              ),

              //Fruits
              BarLabel(
                firstLabel: ExplorePageString.fruits,
                secondLable: ExplorePageString.seeAll,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ExploreItems(
                      nameProduct: ExplorePageString.strawberry,
                      weightProduct: ExplorePageString.oneKg,
                      priceProduct: ExplorePageString.fourDollars,
                      imagePath: 'assets/images/img_fruit_item1.png',
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.banana,
                      weightProduct: ExplorePageString.oneKg,
                      priceProduct: ExplorePageString.twoDollars,
                      imagePath: 'assets/images/img_fruit_item2.png',
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.kiwifruit,
                      weightProduct: ExplorePageString.oneKg,
                      priceProduct: ExplorePageString.threeDollars,
                      imagePath: 'assets/images/img_fruit_item3.png',
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.jaggeryFruit,
                      weightProduct: ExplorePageString.fiveHundredGram,
                      priceProduct: ExplorePageString.threeDollars,
                      imagePath: 'assets/images/img_fruit_item1.png',
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
                      imagePath: 'assets/images/img_explore_dairy_item1.png',
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.amulButter,
                      weightProduct: ExplorePageString.pointFiveLtr,
                      priceProduct: ExplorePageString.twoDollars,
                      imagePath: 'assets/images/img_explore_dairy_item2.png',
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.sofitSoyaMilk,
                      weightProduct: ExplorePageString.pointFiveLtr,
                      priceProduct: ExplorePageString.twoDollars,
                      imagePath: 'assets/images/img_explore_dairy_item3.png',
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.jaggeryPowder,
                      weightProduct: ExplorePageString.fiveHundredGram,
                      priceProduct: ExplorePageString.threeDollars,
                      imagePath: 'assets/images/img_explore_dairy_item1.png',
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
                      imagePath: 'assets/images/img_bakery_item1.png',
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.chocoMuffin,
                      weightProduct: ExplorePageString.sixPacks,
                      priceProduct: ExplorePageString.fourDollars,
                      imagePath: 'assets/images/img_bakery_item2.png',
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.harsheysBar,
                      weightProduct: ExplorePageString.fourtyThreeGram,
                      priceProduct: ExplorePageString.threeDollars,
                      imagePath: 'assets/images/img_gro_item3.png',
                    ),
                    ExploreItems(
                      nameProduct: ExplorePageString.brandBer,
                      weightProduct: ExplorePageString.fourtyThreeGram,
                      priceProduct: ExplorePageString.threeDollars,
                      imagePath: 'assets/images/img_gro_item1.png',
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
