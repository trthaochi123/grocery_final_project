import 'package:flutter/material.dart';
import 'package:sg_grocery_project/base/images/images.dart';
import 'package:sg_grocery_project/base/styles/styles.dart';
import 'package:sg_grocery_project/widgets/back_btn.dart';
import 'package:sg_grocery_project/widgets/explore_items.dart';
import 'package:sg_grocery_project/widgets/name_page.dart';

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //HEADER
              Row(
                children: [
                  BackButtonWidget(
                    svgPath: AppSvg.icBackBlackPath,
                    onClick: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(
                    width: 120,
                  ),
                   NamePageLabel(namePageLabel: "Explore", textStyle: AppStyle.textBlackLabelPage,)
                ],
              ),

              //Groceries
              const BarLabel(
                firstLabel: "Groceries",
                secondLable: 'See all',
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ExploreItems(
                      nameProduct: 'Jaggery Powder',
                      weightProduct: '500 g',
                      priceProduct: '\$3',
                      imagePath: 'assets/images/img_gro_item1.png',
                    ),
                    ExploreItems(
                      nameProduct: 'TATA Arhar Dal',
                      weightProduct: '1 kg',
                      priceProduct: '\$4',
                      imagePath: 'assets/images/img_gro_item2.png',
                    ),
                    ExploreItems(
                      nameProduct: 'Saffola gold oil',
                      weightProduct: '5 Ltr + 1 ltr',
                      priceProduct: '\$20',
                      imagePath: 'assets/images/img_gro_item3.png',
                    ),
                    ExploreItems(
                      nameProduct: 'Jaggery Powder',
                      weightProduct: '500 g',
                      priceProduct: '\$3',
                      imagePath: 'assets/images/img_gro_item1.png',
                    ),
                  ],
                ),
              ),

              //Vegetables
              BarLabel(
                firstLabel: "Vegetables",
                secondLable: 'See all',
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ExploreItems(
                      nameProduct: 'Tomato',
                      weightProduct: '1 kg',
                      priceProduct: '\$2',
                      imagePath: 'assets/images/img_vege_item1.png',
                    ),
                    ExploreItems(
                      nameProduct: 'Potato',
                      weightProduct: '1 kg',
                      priceProduct: '\$1',
                      imagePath: 'assets/images/img_vege_item2.png',
                    ),
                    ExploreItems(
                      nameProduct: 'Onion',
                      weightProduct: '1 kg',
                      priceProduct: '\$2',
                      imagePath: 'assets/images/img_vege_item3.png',
                    ),
                    ExploreItems(
                      nameProduct: 'Jaggery Powder',
                      weightProduct: '500 g',
                      priceProduct: '\$3',
                      imagePath: 'assets/images/img_vege_item1.png',
                    ),
                  ],
                ),
              ),

              //Fruits
              BarLabel(
                firstLabel: "Fruits",
                secondLable: 'See all',
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ExploreItems(
                      nameProduct: 'Strawberry',
                      weightProduct: '1 kg',
                      priceProduct: '\$4',
                      imagePath: 'assets/images/img_fruit_item1.png',
                    ),
                    ExploreItems(
                      nameProduct: 'Banana',
                      weightProduct: '1 kg',
                      priceProduct: '\$2',
                      imagePath: 'assets/images/img_fruit_item2.png',
                    ),
                    ExploreItems(
                      nameProduct: 'Kiwifruit',
                      weightProduct: '1 kg',
                      priceProduct: '\$3',
                      imagePath: 'assets/images/img_fruit_item3.png',
                    ),
                    ExploreItems(
                      nameProduct: 'Jaggery Fruit',
                      weightProduct: '500 g',
                      priceProduct: '\$3',
                      imagePath: 'assets/images/img_fruit_item1.png',
                    ),
                  ],
                ),
              ),

              //Dairy Products
              const BarLabel(
                firstLabel: "Dairy Products",
                secondLable: 'See all',
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ExploreItems(
                      nameProduct: 'A2MATE milk',
                      weightProduct: '0.5 ltr',
                      priceProduct: '\$2',
                      imagePath: 'assets/images/img_explore_dairy_item1.png',
                    ),
                    ExploreItems(
                      nameProduct: 'Amul Butter',
                      weightProduct: '0.5 ltr',
                      priceProduct: '\$2',
                      imagePath: 'assets/images/img_explore_dairy_item2.png',
                    ),
                    ExploreItems(
                      nameProduct: 'Sofit soya milk',
                      weightProduct: '0.5 ltr',
                      priceProduct: '\$2',
                      imagePath: 'assets/images/img_explore_dairy_item3.png',
                    ),
                    ExploreItems(
                      nameProduct: 'Jaggery Powder',
                      weightProduct: '500 g',
                      priceProduct: '\$3',
                      imagePath: 'assets/images/img_explore_dairy_item1.png',
                    ),
                  ],
                ),
              ),

              //Cookies
              const BarLabel(
                firstLabel: "Bakery Items",
                secondLable: 'See all',
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ExploreItems(
                      nameProduct: 'Parle Rusk',
                      weightProduct: '500 g',
                      priceProduct: '\$3',
                      imagePath: 'assets/images/img_bakery_item1.png',
                    ),
                    ExploreItems(
                      nameProduct: 'Choco muffin',
                      weightProduct: '6 pcs',
                      priceProduct: '\$4',
                      imagePath: 'assets/images/img_bakery_item2.png',
                    ),
                    ExploreItems(
                      nameProduct: 'Harshey’s Bar',
                      weightProduct: '43 g',
                      priceProduct: '\$2',
                      imagePath: 'assets/images/img_gro_item3.png',
                    ),
                    ExploreItems(
                      nameProduct: 'Brand Ber',
                      weightProduct: '500 g',
                      priceProduct: '\$3',
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
