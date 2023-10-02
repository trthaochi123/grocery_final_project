import 'package:flutter/material.dart';
import 'package:sg_grocery_project/base/images/images.dart';
import 'package:sg_grocery_project/widgets/back_btn.dart';
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
                  const SizedBox(width: 120,),
                  const NamePageLable(
                      namePageLable: "Explore")
                ],
              ),

              //Groceries
              const BarLabel(
                firstLabel: "Groceries",
                secondLable: 'See all',
              ),

              //Vegetables
              const BarLabel(
                firstLabel: "Vegetables",
                secondLable: 'See all',
              ),

              //Fruits
              const BarLabel(
                firstLabel: "Fruits",
                secondLable: 'See all',
              ),

              //Dairy Products
              const BarLabel(
                firstLabel: "Dairy Products",
                secondLable: 'See all',
              ),

              //Cookies
              const BarLabel(
                firstLabel: "Cookies",
                secondLable: 'See all',
              ),

            ],
          ),
        ),
      ),
    );
  }

}