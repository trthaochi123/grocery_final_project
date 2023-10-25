import 'package:flutter/material.dart';
import 'package:sg_grocery_project/base/colors/app_colors.dart';
import 'package:sg_grocery_project/base/images/app_images.dart';
import 'package:sg_grocery_project/base/styles/app_styles.dart';
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
    AppImage.adHomePage,
    AppImage.adHomePage,
    AppImage.adHomePage,
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
                    hintStyle: AppStyle.hintSearch,
                    prefixIcon: const Icon(
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
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryItems(
                      imagePath: AppImage.cateHomePage1,
                      textLabel: HomePageString.groceries,
                    ),
                    CategoryItems(
                      imagePath: AppImage.cateHomePage2,
                      textLabel: HomePageString.vegetables,
                    ),
                    CategoryItems(
                      imagePath: AppImage.cateHomePage3,
                      textLabel: HomePageString.fruits,
                    ),
                    CategoryItems(
                      imagePath: AppImage.cateHomePage4,
                      textLabel: HomePageString.beverages,
                    ),
                    CategoryItems(
                      imagePath: AppImage.cateHomePage1,
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
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductItems(
                      nameProduct: HomePageString.fortuneRice,
                      priceProduct: HomePageString.threeKg,
                      imagePath: AppImage.prdHomePage1,
                      numberSale: HomePageString.thirtysevenPer,
                      offSale: HomePageString.off,
                    ),
                    ProductItems(
                      nameProduct: HomePageString.freshAvocado,
                      priceProduct: HomePageString.threeKg,
                      imagePath: AppImage.prdHomePage2,
                      numberSale: HomePageString.thirtysevenPer,
                      offSale: HomePageString.off,
                    ),
                    ProductItems(
                      nameProduct: HomePageString.organic,
                      priceProduct: HomePageString.threeKg,
                      imagePath: AppImage.prdHomePage3,
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
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              HomePageString.getTwentyCashback,
                              style: AppStyle.getTwentyCashback,
                            ),
                            Text(
                              HomePageString.onAllBabyProducts,
                              style: AppStyle.onAllBabyProducts,
                            ),
                            const SizedBox(
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
                              Image.asset(
                                AppImage.get25Item,
                              ),
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
                                  child: Text(
                                    HomePageString.shopNow,
                                    style: AppStyle.shopNow,
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
                      child: Image.asset(
                        AppImage.get25Prd,
                      ),
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
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DealItems(
                      textLabel: HomePageString.softDrinks,
                      detailItem: HomePageString.uptoFourty,
                      imagePath: AppImage.dealHomePage1,
                    ),
                    DealItems(
                      textLabel: HomePageString.tea,
                      detailItem: HomePageString.uptoThirty,
                      imagePath: AppImage.dealHomePage2,
                    ),
                    DealItems(
                      textLabel: HomePageString.blackDrinks,
                      detailItem: HomePageString.minFourty,
                      imagePath: AppImage.dealHomePage3,
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
               SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FeaturedItems(
                      nameProduct: HomePageString.granola,
                      detailProduct: HomePageString.premiumAlmond,
                      priceProduct: HomePageString.twentyTwo,
                      weightProduct: HomePageString.oneKg,
                      imagePath: AppImage.featuredHomePage1,
                      bgColor: AppColors.pinkItems,
                    ),
                    FeaturedItems(
                      nameProduct: HomePageString.sftKiwiSlice,
                      detailProduct: HomePageString.dried,
                      priceProduct: HomePageString.fourDollars,
                      weightProduct: HomePageString.threePacks,
                      imagePath: AppImage.featuredHomePage2,
                      bgColor: AppColors.yellowItems,
                    ),
                    FeaturedItems(
                      nameProduct: HomePageString.sftKiwiSlice,
                      detailProduct: HomePageString.dried,
                      priceProduct: HomePageString.fourDollars,
                      weightProduct: HomePageString.threePacks,
                      imagePath: AppImage.featuredHomePage3,
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
