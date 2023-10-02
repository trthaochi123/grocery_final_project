import 'package:flutter/material.dart';

import 'package:permission_handler/permission_handler.dart';
import 'package:sg_grocery_project/screens/main_page.dart';
import 'package:sg_grocery_project/screens/register/register_page.dart';

import '../../base/colors/app_colors.dart';
import '../../widgets/input_field.dart';
import '../../widgets/button_widget.dart';
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
                  "assets/images/img_logo.png",
                  width: 37,
                  height: 53,
                ),
                const SizedBox(
                  width: 16,
                ),
                const Text(
                  "SG",
                  style: TextStyle(fontSize: 29, fontFamily: "Light"),
                ),
                const SizedBox(
                  width: 6,
                ),
                const Text("Grocery",
                    style: TextStyle(
                        fontSize: 29,
                        color: AppColors.greenMainColor,
                        fontFamily: "Medium")),
              ],
            ),

            // IMAGE
            Image.asset(
              "assets/images/img_illustrator.png",
              height: 200,
            ),

            const SizedBox(
              height: 5,
            ),
            // Login
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Login",
                      style: TextStyle(
                          fontSize: 24,
                          color: AppColors.greenMainColor,
                          fontFamily: "SemiBold")),
                ],
              ),
            ),

            const SizedBox(
              height: 19,
            ),

            //email
            InputLogin(
              controller: emailController,
              hintText: 'Enter Your Email ID',
              title: "Email Id",
            ),

            const SizedBox(
              height: 15,
            ),

            //password
            InputLogin(
              controller: passwordController,
              hintText: 'Enter Your Password',
              title: "Password",
            ),

            const SizedBox(
              height: 15,
            ),

            //Button
            ButtonWidget(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MainPage()),
                );
              },
              textButton: 'Login',
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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(
                          color: AppColors.greyColor,
                          fontSize: 16,
                          fontFamily: "Light"),
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
                      imagePath: 'assets/icons/ic_google.png',
                      textIcon: 'Google',
                    ),
                  ],
                ),

                SizedBox(
                  width: 25,
                ),

                // facebook
                SquareTile(
                  imagePath: 'assets/icons/ic_facebook.png',
                  textIcon: 'Facebook',
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
                const Text(
                  "Don't You Have an Account?",
                  style: TextStyle(
                      color: AppColors.greyColor,
                      fontFamily: "Light",
                      fontSize: 16),
                ),

                TextButtonWidget(
                    textButtonName: 'Register',
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
