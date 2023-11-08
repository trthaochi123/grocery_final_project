import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sg_grocery_project/widgets/button_normal.dart';
import 'package:sg_grocery_project/widgets/expansive_widget.dart';

import '../../base/colors/app_colors.dart';
import '../../base/images/app_images.dart';
import '../../base/strings/app_strings.dart';
import '../../base/styles/app_styles.dart';
import '../../widgets/custom_appbar.dart';
import '../privacy/privacy_page.dart';
import '../termsOfSevices/terms_page.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<StatefulWidget> createState() => _AboutUsPage();
}

class _AboutUsPage extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        leading: SizedBox(
          height: 4,
          width: 4,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset("assets/icons/ic_back_white.svg"),
          ),
        ),
        textTitle: AboutUsPageString.pageTitle,
        backgroundColor: AppColors.greenMainColor,
        textStyle: AppStyle.textWhiteLabelPage,
        alignment: Alignment.centerLeft,
      ),
      backgroundColor: AppColors.greenMainColor,
      body: Container(
        margin: EdgeInsets.only(top: 20),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                child: Column(
                  children: [
                    Image.asset(AppImage.imgIllustrator),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      AboutUsPageString.para1,
                      style: AppStyle.textParagraphAbout,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      AboutUsPageString.para2,
                      style: AppStyle.textParagraphAbout,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      AboutUsPageString.para3,
                      style: AppStyle.textParagraphAbout,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      width: double.infinity,
                      height: 416,
                      decoration: BoxDecoration(
                        color: AppColors.containerAbout,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 110),
                    child: Image.asset(AppImage.imgFruit),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                        left: 16,
                        top: 180,
                      ),
                      child: Column(
                        children: [
                          Text(
                            AboutUsPageString.whyChooseUs,
                            style: AppStyle.whyChooseUs,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            AboutUsPageString.weDoNot,
                            style: AppStyle.weDoNot,
                          ),
                          Text(
                            AboutUsPageString.market,
                            style: AppStyle.weDoNot,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            AboutUsPageString.weWouldLike,
                            style: AppStyle.textParagraphAbout,
                          ),
                          SizedBox(
                            height: 28,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/icons/ic_about_organic.svg"),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Text(
                                          AboutUsPageString.organic,
                                          style: AppStyle.organic,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/icons/ic_about_service.svg"),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Text(
                                          AboutUsPageString.service,
                                          style: AppStyle.organic,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/icons/ic_about_delivery.svg"),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Text(
                                          AboutUsPageString.delivery,
                                          style: AppStyle.organic,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/icons/ic_about_security.svg"),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Text(
                                          AboutUsPageString.secure,
                                          style: AppStyle.organic,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ListileAbout(AboutUsPageString.privacy, () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PrivacyPage(),
                  ),
                );
              }),
              SizedBox(
                height: 12,
              ),
              ListileAbout(
                AboutUsPageString.terms,
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TermsPage(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ),

      ),
    );
  }

  Container ListileAbout(String textListile, Function()? onTap) {
    return Container(
      width: 396,
      height: 57,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: AppColors.greenItems),
      child: ListTile(
        trailing: const Icon(
          Icons.chevron_right_outlined,
          color: Colors.black,
        ),
        title: Text(
          textListile,
          style: AppStyle.textParagraphAbout,
        ),
        onTap: onTap,
      ),
    );
  }
}
