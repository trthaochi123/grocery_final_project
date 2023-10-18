import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          backgroundColor: AppColors.whiteColor,
          textStyle: AppStyle.textBlackLabelPage,
        ),
        body: Container(
          padding: EdgeInsets.only(left: 16),
          child: Column(
            children: [
              ClipOval(
                child: Image.asset(
                  "assets/images/img_account_ava.png",
                  width: 100,
                  height: 100,
                ),
              ),
              Column(
                children: [
                  Text(
                    "George D.",
                    style: AppStyle.nameAcc,
                  ),
                  Text(
                    "@george31",
                    style: AppStyle.emailAcc,
                  ),
                ],
              ),
              SizedBox(
                height: 21,
              ),
              Container(
                  width: 396,
                  height: 543,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.greenItems,
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: SvgPicture.asset(AppSvg.icAccMyOrders),
                        title: Text(
                          AccountPageString.myOrders,
                          style: AppStyle.textItemAcc,
                        ),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(AppSvg.icAccMySubs),
                        title: Text(
                          AccountPageString.mySubscriptions,
                          style: AppStyle.textItemAcc,
                        ),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(AppSvg.icAccAddresses),
                        title: Text(
                          AccountPageString.myAddresses,
                          style: AppStyle.textItemAcc,
                        ),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(AppSvg.icAccFaq),
                        title: Text(
                          AccountPageString.faq,
                          style: AppStyle.textItemAcc,
                        ),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(AppSvg.icAccContact),
                        title: Text(
                          AccountPageString.contactUs,
                          style: AppStyle.textItemAcc,
                        ),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(AppSvg.icAccAbout),
                        title: Text(
                          AccountPageString.about,
                          style: AppStyle.textItemAcc,
                        ),
                      ),
                      ListTile(
                        leading: SvgPicture.asset(AppSvg.icAccLogout),
                        title: Text(
                          AccountPageString.logOut,
                          style: AppStyle.textItemAcc,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }
}
