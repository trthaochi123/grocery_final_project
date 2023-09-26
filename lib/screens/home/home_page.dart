import 'package:flutter/material.dart';
import 'package:sg_grocery_project/base/colors/app_colors.dart';
import 'package:sg_grocery_project/screens/explore/explore_page.dart';
import 'package:sg_grocery_project/widgets/category_items.dart';
import 'package:sg_grocery_project/widgets/homepage_label.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),

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
            const HomePageLabel(firstLabel: "Top Categories"),
            const CategoryItems(
                imagePath: 'assets/images/img_cate_item1.png',
                textLabel: 'Groceries'),

            // Top products
            const HomePageLabel(firstLabel: "Top Products"),

            // Get 25%

            // Deals of the week
            const HomePageLabel(firstLabel: "Deals of the week"),

            // Featured Items
            const HomePageLabel(firstLabel: "Featured Items"),
          ],
        ),
      ),
    );
  }
}
