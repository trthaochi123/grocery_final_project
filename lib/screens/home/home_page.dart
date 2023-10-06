import 'package:flutter/material.dart';
import 'package:sg_grocery_project/base/colors/app_colors.dart';
import 'package:sg_grocery_project/screens/explore/explore_page.dart';
import 'package:sg_grocery_project/widgets/category_items.dart';
import 'package:sg_grocery_project/widgets/deal_product_item.dart';
import 'package:sg_grocery_project/widgets/features_items.dart';
import 'package:sg_grocery_project/widgets/bar_label.dart';
import 'package:sg_grocery_project/widgets/product_items.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
                    hintText: "Search products and brands",
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
                firstLabel: "Top Categories",
                secondLable: 'Explore all',
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
                      textLabel: 'Groceries',
                    ),
                    CategoryItems(
                      imagePath: 'assets/images/img_cate_item2.png',
                      textLabel: 'Vegetables',
                    ),
                    CategoryItems(
                      imagePath: 'assets/images/img_cate_item3.png',
                      textLabel: 'Fruits',
                    ),
                    CategoryItems(
                      imagePath: 'assets/images/img_cate_item4.png',
                      textLabel: 'Beverages',
                    ),
                    CategoryItems(
                      imagePath: 'assets/images/img_cate_item1.png',
                      textLabel: 'Groceries',
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              // Top products
              BarLabel(
                firstLabel: "Top Products",
                secondLable: 'Explore all',
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
                      nameProduct: 'Fortune Rice',
                      priceProduct: "\$3/kg",
                      imagePath: 'assets/images/img_prd_item1.png',
                      numberSale: '37%',
                      offSale: 'off',
                    ),
                    ProductItems(
                      nameProduct: 'Fresh Avocado',
                      priceProduct: '\$3/kg',
                      imagePath: 'assets/images/img_prd_item2.png',
                      numberSale: '37%',
                      offSale: 'off',
                    ),
                    ProductItems(
                      nameProduct: 'Organic',
                      priceProduct: '\$3/kg',
                      imagePath: 'assets/images/img_prd_item3.png',
                      numberSale: '37%',
                      offSale: 'off',
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
                              "\Get 25% Cashback",
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: "SemiBold",
                                color: Color.fromRGBO(63, 138, 154, 1),
                              ),
                            ),
                            Text(
                              "on all baby products",
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
                                    'Shop Now',
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
                firstLabel: "Deals of the week",
                secondLable: 'Explore all',
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
                      textLabel: 'Soft drinks',
                      detailItem: 'Upto 40% off',
                      imagePath: 'assets/images/img_deal_item1.png',
                    ),
                    DealItems(
                      textLabel: 'Tea',
                      detailItem: 'Upto 30% off',
                      imagePath: 'assets/images/img_deal_item2.png',
                    ),
                    DealItems(
                      textLabel: 'Black drinks',
                      detailItem: 'Min 40% off',
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
                firstLabel: "Featured Items",
                secondLable: 'Explore all',
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
                      nameProduct: 'Granola',
                      detailProduct: 'Premium Almond',
                      priceProduct: '\$22.00',
                      weightProduct: '1kg',
                      imagePath: 'assets/images/img_featured_item1.png',
                      bgColor: AppColors.pinkItems,
                    ),
                    FeaturedItems(
                      nameProduct: 'SFT kiwi slice',
                      detailProduct: '(Dried)',
                      priceProduct: '\$4.00',
                      weightProduct: '3pcs',
                      imagePath: 'assets/images/img_featured_item2.png',
                      bgColor: AppColors.yellowItems,
                    ),
                    FeaturedItems(
                      nameProduct: 'SFT kiwi slice',
                      detailProduct: '(Dried)',
                      priceProduct: '\$5.00',
                      weightProduct: '1kg',
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
