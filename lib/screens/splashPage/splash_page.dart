import 'package:flutter/material.dart';
import 'package:sg_grocery_project/base/styles/app_styles.dart';
import 'package:sg_grocery_project/data/prefs/prefs.dart';
import 'package:sg_grocery_project/screens/main_page.dart';

import '../../base/colors/app_colors.dart';
import '../../base/images/app_images.dart';
import '../../base/strings/app_strings.dart';
import '../../main.dart';
import '../login/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<StatefulWidget> createState() => _SplashPage();
}

class _SplashPage extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () => startLogin());
    super.initState();
  }

// check Login
  startLogin() {
    if (checkLogin()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MainPage(),
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImage.logoApp,
                width: 53,
                height: 78,
              ),
              const SizedBox(
                width: 18,
              ),
               Text(
                SplashPageString.sg,
                style: AppStyle.sgSplash,
              ),
              const SizedBox(
                width: 6,
              ),
               Text(
                SplashPageString.grocery,
                style: AppStyle.grocerySplash,
              ),
            ],
          ),
          const SizedBox(height: 7),
           Text(
            SplashPageString.yourNeeds,
            style: AppStyle.yourNeeds,
          ),
        ],
      ),
    );
  }
}
