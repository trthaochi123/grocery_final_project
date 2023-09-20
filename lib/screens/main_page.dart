import 'package:drawer_and_bottom_nav_example/screens/account/account_page.dart';
import 'package:drawer_and_bottom_nav_example/screens/cart/cart_page.dart';
import 'package:drawer_and_bottom_nav_example/screens/drawer/about/about_page.dart';
import 'package:drawer_and_bottom_nav_example/screens/drawer/contactUs/contact_page.dart';
import 'package:drawer_and_bottom_nav_example/screens/drawer/faq/faq_page.dart';
import 'package:drawer_and_bottom_nav_example/screens/drawer/myAddress/my_address_page.dart';
import 'package:drawer_and_bottom_nav_example/screens/drawer/myOrder/my_order_page.dart';
import 'package:drawer_and_bottom_nav_example/screens/drawer/mySub/my_sub_page.dart';
import 'package:drawer_and_bottom_nav_example/screens/explore/explore_page.dart';
import 'package:drawer_and_bottom_nav_example/screens/fav/fav_page.dart';
import 'package:drawer_and_bottom_nav_example/screens/home/home_page.dart';
import 'package:flutter/material.dart';

import '../base/colors/app_colors.dart';
import '../widgets/app_icon.dart';
import '../widgets/drawer_item.dart';
import '../widgets/drawer_view.dart';

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

    // các lựa chọn màn hình
    List<Widget> widgetOption = [
      const HomePage(),
      const ExplorePage(),
      const CartPage(),
      const FavPage(),
      const AccountPage(),
    ];

    List<Widget> widgetDrawerOption = [
      const MyOrderPage(),
      const MySubPage(),
      const MyAddressPage(),
      const MyFAQPage(),
      const MyContactPage(),
      const AboutPage(),
    ];

    Widget buildIcon() {
      return Positioned(
        child: InkWell(
            onTap: () => scaffoldKey.currentState!.openDrawer(),
            child: Image.asset("assets/images/ic_menu.png")
        ),
      );
    }

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        elevation: 0, // bóng
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 36
        ),
        backgroundColor: Colors.transparent,
      ),
      body: isDrawer ? widgetDrawerOption[seclectedPage] : widgetOption[seclectedPage],
      drawer: DrawerView(
          icon: const AppIcon(
            icon: "assets/images/ic_avatar.png",
            name: "George D.",
            username: "@george31",
          ),
          background: AppColors.whiteColor,
          backgroundItem: AppColors.backgroundItemDrawerColor,
          onClickItem: (index) {
            if(index == widgetDrawerOption.length) {
              const snackBar = SnackBar(
                  content: Text("You've logged out"));
              scaffoldKey.currentState?.closeDrawer();
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            } else {
              setState(() {
                isDrawer = true;
                seclectedPage = index;
              });
            }
          },
          item: const [
            DrawerItem(
              icon: "assets/svg/ic_my_order.svg",
              title: "My orders",
            ),
            DrawerItem(
              icon: "assets/svg/ic_my_sub.svg",
              title: "My subscriptions",
            ),
            DrawerItem(
              icon: "assets/svg/ic_my_adress.svg",
              title: "My Address",
            ),
            DrawerItem(
              icon: "assets/svg/ic_fab.svg",
              title: "FAQ",
            ),
            DrawerItem(
              icon: "assets/svg/ic_contact_us.svg",
              title: "Contact Us",
            ),
            DrawerItem(
              icon: "assets/svg/ic_about.svg",
              title: "About",
            ),
            DrawerItem(
              icon: "assets/svg/ic_log_out.svg",
              title: "Log Out",
            )
          ]),
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
              icon: Image.asset("assets/images/ic_home.png"),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/images/ic_explore.png"),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/images/ic_cart.png"),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/images/ic_heart.png"),
              label: "Fav",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/images/ic_account.png"),
              label: "Account",
            ),
          ],
        ),
      ),
    );
  }
}