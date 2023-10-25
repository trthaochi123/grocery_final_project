import 'package:flutter/material.dart';
import 'package:sg_grocery_project/base/styles/app_styles.dart';
import 'package:sg_grocery_project/screens/login/login_page.dart';

import '../../base/colors/app_colors.dart';
import '../../base/images/app_images.dart';
import '../../base/strings/app_strings.dart';
import '../../widgets/log_reg_button_widget.dart';
import '../../widgets/input_field.dart';
import '../../widgets/square_tile.dart';
import '../../widgets/text_button_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

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
                  AppImage.logoApp,
                  width: 36.51,
                  height: 53,
                ),
                const SizedBox(
                  width: 17.11,
                ),
                Text(
                  RegisterPageString.sg,
                  style: AppStyle.sgRegister,
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  RegisterPageString.grocery,
                  style: AppStyle.groceryRegister,
                ),
              ],
            ),

            // Register
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 55),
                  Text(
                    RegisterPageString.register,
                    style: AppStyle.registerLable,
                  ),
                ],
              ),
            ),

            //Your Name
            InputLogin(
              controller: yournameController,
              hintText: RegisterPageString.enterYourName,
              title: RegisterPageString.yourName,
            ),

            const SizedBox(
              height: 10,
            ),

            // Email Id
            InputLogin(
              controller: emailController,
              hintText: RegisterPageString.enterYourEmailID,
              title: RegisterPageString.emailId,
            ),

            const SizedBox(
              height: 10,
            ),

            // Password
            InputLogin(
              controller: passwordController,
              hintText: RegisterPageString.enterYourPassword,
              title: RegisterPageString.password,
            ),

            const SizedBox(
              height: 10,
            ),

            // ConfirmPassword
            InputLogin(
              controller: confirmPasswordController,
              hintText: RegisterPageString.confirmYourPassword,
              title: RegisterPageString.confirmPassword,
            ),

            const SizedBox(
              height: 10,
            ),

            // ContactNumber
            InputLogin(
              controller: contactNumberController,
              hintText: RegisterPageString.yourContactNumber,
              title: RegisterPageString.contactNumber,
            ),

            const SizedBox(
              height: 10,
            ),

            // Register Button
            ButtonWidget(
              onPressed: registerUser,
              textButton: RegisterPageString.textButton,
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      RegisterPageString.orContinueWith,
                      style: AppStyle.orContinueWithRegister,
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
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // google
                Row(
                  children: [
                    SquareTile(
                      imagePath: AppImage.googleApp,
                      textIcon: RegisterPageString.google,
                    ),
                  ],
                ),

                SizedBox(
                  width: 25,
                ),

                // apple
                SquareTile(
                  imagePath: AppImage.facebookApp,
                  textIcon: RegisterPageString.facebook,
                ),
              ],
            ),

            const SizedBox(
              height: 25,
            ),

            // Already have an account ?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  RegisterPageString.question,
                  style: AppStyle.questionRegister,
                ),
                TextButtonWidget(
                    textButtonName: RegisterPageString.login,
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
