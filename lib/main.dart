
import 'package:drawer_and_bottom_nav_example/screens/splashPage/splash_page.dart';
import 'package:flutter/material.dart';

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
      title: "Example Drawer and Bottom Nav",
      home:   const SplashPage(),
    );
  }

}
