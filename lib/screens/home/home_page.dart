import 'package:flutter/material.dart';
import 'package:sg_grocery_project/base/colors/app_colors.dart';
import 'package:sg_grocery_project/screens/explore/explore_page.dart';
import 'package:sg_grocery_project/widgets/category_items.dart';
import 'package:sg_grocery_project/widgets/deal_product_item.dart';
import 'package:sg_grocery_project/widgets/features_items.dart';
import 'package:sg_grocery_project/widgets/bar_label.dart';
import 'package:sg_grocery_project/widgets/product_items.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../base/strings/app_strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List<String> assets = [
    'assets/images/img_advertisement.png',
    'assets/images/img_advertisement.png',
    'assets/images/img_advertisement.png',
  ];

  int currentIndex = 0;
  final _controller = PageController();

  navigateExplorePage() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Searchbar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: HomePageString.hintSearch,
                    hintStyle: const TextStyle(
                        fontFamily: "light",
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 35,
                    ),
                    prefixIconColor: AppColors.greyColor,
                  ),
                ),
              ),

              // Carousel
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
                            setState(() {});
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
                      SmoothPageIndicator(
                        controller: _controller,
                        count: assets.length,
                        effect: const ExpandingDotsEffect(
                          activeDotColor: AppColors.greenMainColor,
                          dotColor: AppColors.greyColor,
                          dotHeight: 6,
                          dotWidth: 10,
                          spacing: 4,
                          expansionFactor: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Top categories
              //item1
              BarLabel(
                firstLabel: HomePageString.topCategories,
                secondLable: HomePageString.exploreAll,
                onClickButton: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExplorePage(),
                    ),
                  );
                },
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryItems(
                      imagePath: 'assets/images/img_cate_item1.png',
                      textLabel: HomePageString.groceries,
                    ),
                    CategoryItems(
                      imagePath: 'assets/images/img_cate_item2.png',
                      textLabel: HomePageString.vegetables,
                    ),
                    CategoryItems(
                      imagePath: 'assets/images/img_cate_item3.png',
                      textLabel: HomePageString.fruits,
                    ),
                    CategoryItems(
                      imagePath: 'assets/images/img_cate_item4.png',
                      textLabel: HomePageString.beverages,
                    ),
                    CategoryItems(
                      imagePath: 'assets/images/img_cate_item1.png',
                      textLabel: HomePageString.groceries,
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              // Top products
              BarLabel(
                firstLabel: HomePageString.topProducts,
                secondLable: HomePageString.exploreAll,
                onClickButton: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExplorePage(),
                    ),
                  );
                },
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductItems(
                      nameProduct: HomePageString.fortuneRice,
                      priceProduct: HomePageString.threeKg,
                      imagePath: 'assets/images/img_prd_item1.png',
                      numberSale: HomePageString.thirtysevenPer,
                      offSale: HomePageString.off,
                    ),
                    ProductItems(
                      nameProduct: HomePageString.freshAvocado,
                      priceProduct: HomePageString.threeKg,
                      imagePath: 'assets/images/img_prd_item2.png',
                      numberSale: HomePageString.thirtysevenPer,
                      offSale: HomePageString.off,
                    ),
                    ProductItems(
                      nameProduct: HomePageString.organic,
                      priceProduct: HomePageString.threeKg,
                      imagePath: 'assets/images/img_prd_item3.png',
                      numberSale: HomePageString.thirtysevenPer,
                      offSale: HomePageString.off,
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              // Get 25%
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 191,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(234, 251, 255, 1),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 20, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              HomePageString.getTwentyCashback,
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: "SemiBold",
                                color: Color.fromRGBO(63, 138, 154, 1),
                              ),
                            ),
                            Text(
                              HomePageString.onAllBabyProducts,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Light",
                                color: Color.fromRGBO(63, 138, 154, 1),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 110, left: 20),
                          child: Stack(
                            children: [
                              Image.asset('assets/images/img_get25_item.png'),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: ElevatedButton(
                                  onPressed: navigateExplorePage,
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    backgroundColor: AppColors.greenMainColor,
                                  ),
                                  child: const Text(
                                    HomePageString.shopNow,
                                    style: TextStyle(
                                        color: AppColors.whiteColor,
                                        fontFamily: "SemiBold",
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 6,
                      right: 0,
                      child: Image.asset('assets/images/img_get25_prd.png'),
                    )
                  ],
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              // Deals of the week
              BarLabel(
                firstLabel: HomePageString.dealsWweek,
                secondLable: HomePageString.exploreAll,
                onClickButton: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExplorePage(),
                    ),
                  );
                },
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DealItems(
                      textLabel: HomePageString.softDrinks,
                      detailItem: HomePageString.uptoFourty,
                      imagePath: 'assets/images/img_deal_item1.png',
                    ),
                    DealItems(
                      textLabel: HomePageString.tea,
                      detailItem: HomePageString.uptoThirty,
                      imagePath: 'assets/images/img_deal_item2.png',
                    ),
                    DealItems(
                      textLabel: HomePageString.blackDrinks,
                      detailItem: HomePageString.minFourty,
                      imagePath: 'assets/images/img_deal_item3.png',
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              // Featured Items
               BarLabel(
                firstLabel: HomePageString.featuredItems,
                secondLable: HomePageString.exploreAll,
                 onClickButton: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(
                       builder: (context) => ExplorePage(),
                     ),
                   );
                 },
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FeaturedItems(
                      nameProduct: HomePageString.granola,
                      detailProduct: HomePageString.premiumAlmond,
                      priceProduct: HomePageString.twentyTwo,
                      weightProduct: HomePageString.oneKg,
                      imagePath: 'assets/images/img_featured_item1.png',
                      bgColor: AppColors.pinkItems,
                    ),
                    FeaturedItems(
                      nameProduct: HomePageString.sftKiwiSlice,
                      detailProduct: HomePageString.dried,
                      priceProduct: HomePageString.fourDollars,
                      weightProduct: HomePageString.threePacks,
                      imagePath: 'assets/images/img_featured_item2.png',
                      bgColor: AppColors.yellowItems,
                    ),
                    FeaturedItems(
                      nameProduct: HomePageString.sftKiwiSlice,
                      detailProduct: HomePageString.dried,
                      priceProduct: HomePageString.fourDollars,
                      weightProduct: HomePageString.threePacks,
                      imagePath: 'assets/images/img_featured_item3.png',
                      bgColor: AppColors.orangeItems,
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
