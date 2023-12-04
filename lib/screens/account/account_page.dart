import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sg_grocery_project/data/prefs/prefs.dart';
import 'package:sg_grocery_project/screens/aboutUs/aboutUs_page.dart';
import 'package:sg_grocery_project/screens/login/login_page.dart';
import 'package:sg_grocery_project/screens/myAddresses/index.dart';
import 'package:sg_grocery_project/screens/myOrder/myOrder_page.dart';
import 'package:sg_grocery_project/screens/subscription/subs_page.dart';
import 'package:sg_grocery_project/screens/contactUs/contactUs_page.dart';
import 'package:sg_grocery_project/screens/faq/faq_page.dart';
import 'package:sg_grocery_project/widgets/custom_appbar.dart';

import '../../base/colors/app_colors.dart';
import '../../base/images/app_images.dart';
import '../../base/strings/app_strings.dart';
import '../../base/styles/app_styles.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<StatefulWidget> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(
          textTitle: AccountPageString.accountTitle,
          backgroundColor: AppColors.greenMainColor,
          textStyle: AppStyle.textWhiteLabelPage,
        ),
        body: Container(
          padding: EdgeInsets.only(left: 16),
          child: Column(
            children: [
              ClipOval(
                child: Image.asset(
                  AppImage.imgAccAva,
                  width: 100,
                  height: 100,
                ),
              ),
              Column(
                children: [
                  Text(
                    AccountPageString.nameAcc,
                    // style: AppStyle.nameAcc,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    AccountPageString.emailAcc,
                    style: AppStyle.emailAcc,
                  ),
                ],
              ),
              SizedBox(
                height: 21,
              ),
              Expanded(
                //lap day khoang trong
                child: Container(
                    width: 396,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColors.greenItems,
                    ),
                    child: Column(
                      children: [
                        buildListTile(
                          // icon
                          SvgPicture.asset(AppSvg.icAccMyOrders),
                          // text
                          AccountPageString.myOrders,
                          // onTap
                              () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyOrdersPage(),
                              ),
                            );
                          },
                        ),
                        buildListTile(
                          // icon
                          SvgPicture.asset(AppSvg.icAccMySubs),
                          // text
                          AccountPageString.mySubscriptions,
                          // onTap
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SubsPage(),
                              ),
                            );
                          },
                        ),
                        buildListTile(
                          // icon
                          SvgPicture.asset(AppSvg.icAccAddresses),
                          // text
                          AccountPageString.myAddresses,
                          // onTap
                              () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyAddresses(),
                              ),
                            );
                          },
                        ),
                        buildListTile(
                          // icon
                          SvgPicture.asset(AppSvg.icAccFaq),
                          // text
                          AccountPageString.faq,
                          // onTap
                              () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FaqPage(),
                              ),
                            );
                          },
                        ),
                        buildListTile(
                          // icon
                          SvgPicture.asset(AppSvg.icAccContact),
                          // text
                          AccountPageString.contactUs,
                          // onTap
                              () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ContactUsPage(),
                              ),
                            );
                          },
                        ),
                        buildListTile(
                          // icon
                          SvgPicture.asset(AppSvg.icAccAbout),
                          // text
                          AccountPageString.about,
                          // onTap
                              () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AboutUsPage(),
                              ),
                            );
                          },
                        ),
                        buildListTile(
                          // icon
                          SvgPicture.asset(AppSvg.icAccLogout),
                          // text
                          AccountPageString.logOut,
                          // onTap
                              () async {
                            setLogin(false);
                                await FirebaseAuth.instance.signOut();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ),
                            );
                            ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text("You've Logged Out")));
                          },
                        ),

                      ],
                    )),
              ),
            ],
          ),
        ));
  }

  Widget buildListTile(Widget leading, String title, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Row(
          children: <Widget>[
            leading,
            SizedBox(width: 16), // Khoảng cách giữa icon và text
            Text(
              title,
              style: TextStyle(fontSize: 18, fontFamily: "ExtraLight"),
            ),
          ],
        ),
      ),
    );
  }
}
