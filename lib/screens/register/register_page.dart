import 'package:flutter/material.dart';
import 'package:sg_grocery_project/screens/login/login_page.dart';

import '../../base/colors/app_colors.dart';
import '../../widgets/log_reg_button_widget.dart';
import '../../widgets/input_field.dart';
import '../../widgets/square_tile.dart';
import '../../widgets/text_button_widget.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final yournameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final contactNumberController = TextEditingController();

  void registerUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            // SG Grocery
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Image.asset(
                  "assets/images/img_logo.png",
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

            // Register
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 55),
                  Text(
                    "Register",
                    style: TextStyle(
                        fontSize: 21,
                        color: AppColors.greenMainColor,
                        fontFamily: "SemiBold"),
                  ),
                ],
              ),
            ),

            //Your Name
            InputLogin(
              controller: yournameController,
              hintText: 'Enter Your Email ID',
              title: "Email Id",
            ),

            const SizedBox(
              height: 10,
            ),

            // Email Id
            InputLogin(
              controller: emailController,
              hintText: 'Enter Your Email ID',
              title: "Email Id",
            ),

            const SizedBox(
              height: 10,
            ),

            // Password
            InputLogin(
              controller: passwordController,
              hintText: 'Enter Your Email ID',
              title: "Email Id",
            ),

            const SizedBox(
              height: 10,
            ),

            // ConfirmPassword
            InputLogin(
              controller: confirmPasswordController,
              hintText: 'Enter Your Email ID',
              title: "Email Id",
            ),

            const SizedBox(
              height: 10,
            ),

            // ContactNumber
            InputLogin(
              controller: contactNumberController,
              hintText: 'Enter Your Email ID',
              title: "Email Id",
            ),

            const SizedBox(
              height: 10,
            ),

            // Register Button
            ButtonWidget(
              onPressed: registerUser,
              textButton: 'Register',
            ),

            const SizedBox(
              height: 15,
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

            // google or apple
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

                // apple
                SquareTile(
                  imagePath: 'assets/icons/ic_facebook.png',
                  textIcon: 'Facebook',
                ),
              ],
            ),

            const SizedBox(
              height: 25,
            ),

            // Dont have an account ?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already Have an Account?",
                  style: TextStyle(
                      color: AppColors.greyColor,
                      fontFamily: "Light",
                      fontSize: 16),
                ),
                TextButtonWidget(
                    textButtonName: 'Login',
                    onClick: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    })
              ],
            ),

            const SizedBox(
              height: 33,
            ),
          ],
        ),
      ),
    );
  }
}
