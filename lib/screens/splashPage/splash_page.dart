import 'package:flutter/material.dart';

import '../../base/colors/app_colors.dart';
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
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
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
