import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sg_grocery_project/base/styles/app_styles.dart';
import 'package:sg_grocery_project/data/prefs/prefs.dart';
import 'package:sg_grocery_project/screens/main_page.dart';
import 'package:sg_grocery_project/screens/register/register_page.dart';

import '../../base/images/app_images.dart';
import '../../base/strings/app_strings.dart';
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

  Future<UserCredential?> login(
      {required String email, required String pwd}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: pwd
      );
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('No user found for that email.'),
          ),
        );
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Wrong password provided for that user.'),
          ),
        );
      }
    }
    return null;
  }

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
              onPressed: () async {
                // setLogin(true);
                final account = await login(
                  email: emailController.text,
                  pwd: passwordController.text);
                if (account != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainPage(),
                    ),
                  );
                }
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // google
                Row(
                  children: const [
                    SquareTile(
                      imagePath: AppImage.googleApp,
                      textIcon: LoginPageString.google,
                    ),
                  ],
                ),

                const SizedBox(
                  width: 25,
                ),

                // facebook
                const SquareTile(
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
                          builder: (context) => const RegisterPage(),
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
