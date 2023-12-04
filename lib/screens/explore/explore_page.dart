import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sg_grocery_project/base/images/app_images.dart';
import 'package:sg_grocery_project/base/styles/app_styles.dart';
import 'package:sg_grocery_project/widgets/back_btn.dart';
import 'package:sg_grocery_project/widgets/custom_appbar.dart';
import 'package:sg_grocery_project/widgets/explore_items.dart';
import 'package:sg_grocery_project/widgets/name_page.dart';

import '../../base/colors/app_colors.dart';
import '../../base/strings/app_strings.dart';
import '../../models/product.dart';
import '../../models/title.dart';
import '../../widgets/bar_label.dart';
import '../fruits/fruits_page.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<StatefulWidget> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  final db = FirebaseFirestore.instance;
  List<TabTitle> titles = [];
  List<Product> products = [];

  @override
  void initState() {
    final titlesTemp = <TabTitle>[];
    final productsTemp = <Product>[];
    db.collection('categories').get().then((event) {
      for (var i = 0; i < event.docs.length; i++) {
        db.collection('products').get().then(
          (value) {
            for (final item in value.docs) {
              final categoriesId = (item.data()['category_id']
                      as DocumentReference<Map<String, dynamic>>)
                  .id;
              print("ddd ${event.docs[i].id}");
              if (categoriesId == event.docs[i].id) {
                productsTemp.add(
                  Product(
                    categoryId: categoriesId,
                    description: item.data()['description'] as String,
                    image: item.data()['image'] as String,
                    name: item.data()['name'] as String,
                    price: item.data()['price'] as String,
                    weight: item.data()['weight'] as String,
                  ),
                );
              }
            }
            setState(() {
              titles = titlesTemp;
            });
          },
        );

        titlesTemp.add(
          TabTitle(
            id: event.docs[i].id,
            name: event.docs[i].data().values.first as String,
          ),
        );
      }
      setState(() {
        products = productsTemp;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        textTitle: ExplorePageString.exploreTitle,
        backgroundColor: AppColors.greenMainColor,
        textStyle: AppStyle.textWhiteLabelPage,
      ),
      body: SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: titles.isNotEmpty
                    ? titles.map((e) {
                        return Column(
                          children: [
                            BarLabel(
                              firstLabel: e.name,
                              secondLable: ExplorePageString.seeAll,
                              onClickButton: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FruitsPage(),
                                  ),
                                );
                              },
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: products.isNotEmpty
                                    ? products.map((e) {
                                  return ExploreItems(
                                    nameProduct: e.name,
                                    weightProduct: e.weight,
                                    priceProduct: e.price,
                                    imagePath: e.image,
                                  );
                                }).toList()
                                    : [],
                              ),
                            ),
                          ],
                        );
                      }).toList()
                    : [],
              ),


              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
