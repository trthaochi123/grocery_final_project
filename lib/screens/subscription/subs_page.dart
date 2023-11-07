import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sg_grocery_project/base/colors/app_colors.dart';
import 'package:sg_grocery_project/widgets/custom_appbar.dart';
import 'package:sg_grocery_project/widgets/subs_items.dart';

import '../../base/images/app_images.dart';
import '../../base/strings/app_strings.dart';
import '../../base/styles/app_styles.dart';

class SubsPage extends StatefulWidget {
  const SubsPage({super.key});

  @override
  State<StatefulWidget> createState() => _SubsPageState();
}

class _SubsPageState extends State<SubsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
          textTitle: FavWidgetString.textTitle,
          backgroundColor: AppColors.greenMainColor,
          textStyle: AppStyle.textWhiteLabelPage),
      backgroundColor: AppColors.greenMainColor,
      body: ListView(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 28, left: 16, right: 16),
                child: Container(
                  width: 396,
                  height: 51,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 28, top: 44),
                child: Text(
                  FavWidgetString.textDropdownTitle,
                  style: AppStyle.textDropdownTitle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 368, top: 50),
                child: SvgPicture.asset("assets/icons/ic_fav_down.svg"),
              ),
            ],
          ),
          const SizedBox(
            height: 28,
          ),

          Container(
            width: double.infinity,
            height: 722,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(28),
                topRight: Radius.circular(28),
              ),
              color: AppColors.whiteColor,
            ),
            child: ListView(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  child: Column(
                    children: [
                      // CALENDER
                      Row(
                        children: [
                          Text(
                            FavWidgetString.today,
                            style: AppStyle.today,
                          ),
                          Text(
                            FavWidgetString.dateMonthYear,
                            style: AppStyle.dateMonthYear,
                          ),
                          SvgPicture.asset("assets/icons/ic_fav_calender.svg"),
                        ],
                      ),

                      const SizedBox(
                        height: 24,
                      ),

                      // ITEMS
                      const SubsItem(
                        imagePath: "assets/images/img_fav_item1.png",
                        namePrd: FavWidgetString.namePrdFav,
                        weightPrd: FavWidgetString.weightPrdFav,
                        realityPrice: FavWidgetString.pricePrdFav,
                        width: 68,
                        height: 68,
                      ),

                      const SizedBox(
                        height: 18,
                      ),

                      const SubsItem(
                        imagePath: "assets/images/img_fav_item1.png",
                        namePrd: FavWidgetString.namePrdFav,
                        weightPrd: FavWidgetString.weightPrdFav,
                        realityPrice: FavWidgetString.pricePrdFav,
                        width: 68,
                        height: 68,
                      ),

                      const SizedBox(
                        height: 18,
                      ),

                      const SubsItem(
                        imagePath: "assets/images/img_fav_item1.png",
                        namePrd: FavWidgetString.namePrdFav,
                        weightPrd: FavWidgetString.weightPrdFav,
                        realityPrice: FavWidgetString.pricePrdFav,
                        width: 68,
                        height: 68,
                      ),

                      const SizedBox(
                        height: 32,
                      ),
                      // IMAGE
                      Image.asset(AppImage.imageFav),

                      const SizedBox(
                        height: 18,
                      ),
                      // TEXT
                      const Text(FavWidgetString.textIllustrator),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
