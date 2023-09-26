import 'package:sg_grocery_project/screens/account/account_page.dart';
import 'package:sg_grocery_project/screens/cart/cart_page.dart';
import 'package:sg_grocery_project/screens/explore/explore_page.dart';
import 'package:sg_grocery_project/screens/fav/fav_page.dart';
import 'package:sg_grocery_project/screens/home/home_page.dart';
import 'package:flutter/material.dart';

import '../base/colors/app_colors.dart';
import '../widgets/app_icon.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() => _MainPageState();

}

class _MainPageState extends State<MainPage> {
  int seclectedPage = 0; // trỏ HomePage chạy đầu tiên

  bool isDrawer = false;


  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey =  GlobalKey<ScaffoldState>();

    // các lựa chọn màn hình theo index[selectedPage]
    List<Widget> widgetOption = [
      const HomePage(),
      const ExplorePage(),
      const CartPage(),
      const FavPage(),
      const AccountPage(),
    ];


    Widget buildIcon() {
      return Positioned(
        child: InkWell(
            onTap: () => scaffoldKey.currentState!.openDrawer(),
            child: Image.asset("assets/icons/ic_menu.png")
        ),
      );
    }

    return Scaffold(
      key: scaffoldKey,
      body: widgetOption[seclectedPage],

      // BottomNav
      bottomNavigationBar: SizedBox(
        height: 72,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) {
            setState(() {
              isDrawer = false;
              seclectedPage = index;
            });
          },

          items: [
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/ic_home.png"),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/ic_explore.png"),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/ic_cart.png"),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/ic_heart.png"),
              label: "Fav",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/ic_account.png"),
              label: "Account",
            ),
          ],
        ),
      ),
    );
  }
}