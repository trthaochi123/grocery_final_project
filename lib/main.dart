
import 'package:sg_grocery_project/screens/cart/cart_page.dart';
import 'package:sg_grocery_project/screens/explore/explore_page.dart';
import 'package:sg_grocery_project/screens/fruits/fruits_page.dart';
import 'package:sg_grocery_project/screens/home/home_page.dart';
import 'package:sg_grocery_project/screens/login/login_page.dart';
import 'package:sg_grocery_project/screens/main_page.dart';
import 'package:sg_grocery_project/screens/register/register_page.dart';
import 'package:sg_grocery_project/screens/splashPage/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:sg_grocery_project/widgets/category_items.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'base/colors/app_colors.dart';

SharedPreferences? prefs;


void main() {
  runApp(const MyApp());
  initSharedPreferences();
}

// gán biến prefs để khởi tạo => sử dụng toàn bộ app
Future<void> initSharedPreferences() async{
  prefs = await SharedPreferences.getInstance();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Montserrat",
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.bottomNavColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      title: "SG Grocery",
      home: SplashPage(),
    );
  }
}
