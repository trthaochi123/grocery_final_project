import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sg_grocery_project/base/images/app_images.dart';
import 'package:sg_grocery_project/screens/account/account_page.dart';
import 'package:sg_grocery_project/screens/cart/cart_page.dart';
import 'package:sg_grocery_project/screens/explore/explore_page.dart';
import 'package:sg_grocery_project/screens/subscription/subs_page.dart';
import 'package:sg_grocery_project/screens/home/home_page.dart';
import 'package:flutter/material.dart';

import '../base/colors/app_colors.dart';
import '../widgets/app_icon.dart';
import 'fav/fav_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // final db = FirebaseFirestore.instance;

  int seclectedPage = 0; // trỏ HomePage chạy đầu tiên

  // @override
  // void initState() {
  //   db.collection('categories').get().then((event) {
  //     for (var doc in event.docs) {
  //       print(doc.data());
  //     }
  //   });
  //   super.initState();
  // }

  // các lựa chọn màn hình theo index[selectedPage]
  List<Widget> widgetOption = [
    const HomePage(),
    const ExplorePage(),
    const CartPage(),
    const FavPage(),
    const AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: seclectedPage,
        children: widgetOption,
      ),
      bottomNavigationBar: SizedBox(
        height: 108,
        child: BottomNavigationBar(
          currentIndex: seclectedPage,
          onTap: (index) => setState(() {
            seclectedPage = index;
          }),
          items: _itemBottomNav(),
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> _itemBottomNav() {
    return [
      BottomNavigationBarItem(
        icon: _iconBottomNav(seclectedPage == 0, AppSvg.icHomePath),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: _iconBottomNav(seclectedPage == 1, AppSvg.icExplorePath),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: _iconBottomNav(seclectedPage == 2, AppSvg.icCartPath),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: _iconBottomNav(seclectedPage == 3, AppSvg.icFavPath),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: _iconBottomNav(seclectedPage == 4, AppSvg.icAccountPath),
        label: "Home",
      ),
    ];
  }

  Widget _iconBottomNav(bool selected, String icon) {
    String checkIcon = selected == true
        ? "${icon.split(".")[0].toString()}_selected.svg"
        : icon;
    return Container(
      height: 36,
      width: 36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: selected ? AppColors.whiteColor : AppColors.greenMainColor,
      ),
      child: Center(
        child: SvgPicture.asset(
          checkIcon,
          height: 26,
          width: 26,
        ),
      ),
    );
  }
}
