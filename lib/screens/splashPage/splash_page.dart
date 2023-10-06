import 'package:flutter/material.dart';
import 'package:sg_grocery_project/data/prefs/prefs.dart';
import 'package:sg_grocery_project/screens/main_page.dart';

import '../../base/colors/app_colors.dart';
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
                "assets/images/img_logo.png",
                width: 53,
                height: 78,
              ),
              const SizedBox(
                width: 17.11,
              ),
              const Text(
                "SG",
                style: TextStyle(
                  fontSize: 43,
                  fontFamily: "Light",
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              const Text(
                "Grocery",
                style: TextStyle(
                  fontSize: 43,
                  color: AppColors.greenMainColor,
                  fontFamily: "SemiBold",
                ),
              ),
            ],
          ),
          const SizedBox(height: 7),
          const Text(
            "Your needs in just one place",
            style: TextStyle(
              fontSize: 20,
              color: AppColors.greenMainColor,
              fontFamily: "Light",
            ),
          ),
        ],
      ),
    );
  }
}
