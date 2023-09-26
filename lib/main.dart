import 'package:sg_grocery_project/screens/home/home_page.dart';
import 'package:sg_grocery_project/screens/login/login_page.dart';
import 'package:sg_grocery_project/screens/main_page.dart';
import 'package:sg_grocery_project/screens/register/register_page.dart';
import 'package:sg_grocery_project/screens/splashPage/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:sg_grocery_project/widgets/category_items.dart';

import 'base/colors/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: AppColors.bottomNavColor
          )
      ),
      title: "SG Grocery",
      home:  MainPage(),
    );
  }

}
