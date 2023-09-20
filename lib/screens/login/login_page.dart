
import 'package:drawer_and_bottom_nav_example/screens/login/square_tile.dart';
import 'package:flutter/material.dart';

import '../../base/colors/app_colors.dart';
import '../../widgets/input_field.dart';
import 'my_button.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // SG Grocery
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Image.asset(
                  "assets/images/img1.png",
                  width: 36.51,
                  height: 53,
                ),
                const SizedBox(
                  width: 17.11,
                ),
                const Text(
                  "SG",
                  style: TextStyle(fontSize: 28.79, fontFamily: "Light"),
                ),
                const SizedBox(
                  width: 6,
                ),
                const Text("Grocery",
                    style: TextStyle(
                        fontSize: 28.79,
                        color: AppColors.greenMainColor,
                        fontFamily: "Medium")),
              ],
            ),

            // IMAGE
            const SizedBox(height: 8),
            Image.asset(
              "assets/images/img_illustrator.png",
              width: 140,
            ),

            // Login
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(height: 55),
                  Text("Login",
                      style: TextStyle(
                          fontSize: 24,
                          color: AppColors.greenMainColor,
                          fontFamily: "Medium")),
                ],
              ),
            ),

            //email
            InputLogin(
              controller: emailController,
              hintText: 'Enter Your Email ID',
              title: "Email Id",
            ),

            const SizedBox(
              height: 20,
            ),

            //password
            InputLogin(
              controller: passwordController,
              hintText: 'Enter Your Password',
              title: "Password",
            ),

            const SizedBox(
              height: 30,
            ),

            //Button
            MyButton(
              onTap: signUserIn,
            ),

            const SizedBox(
              height: 20,
            ),

            // or continue
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Expanded(
                    // dong ke
                    child: Divider(
                      thickness: 0.5,
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
                      thickness: 0.5,
                      color: Colors.grey[900],
                    ),
                  ),
                ],
              ),
            ),

            // google or apple
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // google
                Row(
                  children: const [
                    SquareTile(
                      imagePath: 'assets/images/ic_google.png',
                      textIcon: 'Google',
                    ),
                  ],
                ),

                const SizedBox(
                  width: 25,
                ),

                // apple
                const SquareTile(
                  imagePath: 'assets/images/ic_facebook.png',
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
              children: const [
                Text(
                  "Don't You Have an Account?",
                  style: TextStyle(
                      color: AppColors.greyColor,
                      fontFamily: "Light",
                      fontSize: 16),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Register',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "SemiBold"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
