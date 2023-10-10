import 'package:flutter/material.dart';
import 'package:sg_grocery_project/base/styles/app_styles.dart';
import 'package:sg_grocery_project/data/prefs/prefs.dart';
import 'package:sg_grocery_project/screens/main_page.dart';
import 'package:sg_grocery_project/screens/register/register_page.dart';

import '../../base/colors/app_colors.dart';
import '../../base/images/app_images.dart';
import '../../base/strings/app_strings.dart';
import '../../main.dart';
import '../../widgets/input_field.dart';
import '../../widgets/log_reg_button_widget.dart';
import '../../widgets/square_tile.dart';
import '../../widgets/text_button_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 19,
            ),
            // SG Grocery
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImage.logoApp,
                  width: 37,
                  height: 53,
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  LoginPageString.sg,
                  style: AppStyle.sgLogo,
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  LoginPageString.grocery,
                  style: AppStyle.groceryLogo,
                ),
              ],
            ),

            // IMAGE
            Image.asset(
              AppImage.illusLogin,
              height: 200,
            ),

            const SizedBox(
              height: 5,
            ),
            // Login
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    LoginPageString.login,
                    style: AppStyle.loginLable,
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 19,
            ),

            //email
            InputLogin(
              controller: emailController,
              hintText: LoginPageString.enterYourEmailID,
              title: LoginPageString.emailId,
            ),

            const SizedBox(
              height: 15,
            ),

            //password
            InputLogin(
              controller: passwordController,
              hintText: LoginPageString.enterYourPassword,
              title: LoginPageString.password,
            ),

            const SizedBox(
              height: 15,
            ),

            //Button
            ButtonWidget(
              onPressed: () {
                setLogin(true);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainPage(),
                  ),
                );
              },
              textButton: LoginPageString.textButton,
            ),

            const SizedBox(
              height: 16,
            ),

            // or continue
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Expanded(
                    // dong ke
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey[900],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      LoginPageString.orContinueWith,
                      style: AppStyle.orContinueWith,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey[900],
                    ),
                  ),
                ],
              ),
            ),

            // google or facebook
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // google
                Row(
                  children: [
                    SquareTile(
                      imagePath: AppImage.googleApp,
                      textIcon: LoginPageString.google,
                    ),
                  ],
                ),

                SizedBox(
                  width: 25,
                ),

                // facebook
                SquareTile(
                  imagePath: AppImage.facebookApp,
                  textIcon: LoginPageString.facebook,
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            // Dont have an account ?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  LoginPageString.question,
                  style: AppStyle.question,
                ),
                TextButtonWidget(
                    textButtonName: LoginPageString.register,
                    onClick: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterPage(),
                        ),
                      );
                    }),
              ],
            ),

            const SizedBox(
              height: 28,
            ),
          ],
        ),
      ),
    );
  }
}
