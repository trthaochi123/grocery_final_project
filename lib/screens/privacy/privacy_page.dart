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

class PrivacyPage extends StatefulWidget {
  const PrivacyPage({super.key});

  @override
  State<StatefulWidget> createState() => _PrivacyPage();
}

class _PrivacyPage extends State<PrivacyPage> {
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
        textTitle: "Privacy Policy",
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
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Privacy Policy",
                          style: AppStyle.titlePrivacy,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Last updated on Nov,2021",
                      style: AppStyle.lastUpdate,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "SG Grocery is committed to protecting your privacy. This Privacy Policy explains our data processing practices and your options regarding the ways in which your personal data is used. If you have concerning your personal information or any questions please contact us to given email at  customercare@SGGrocery.us please note that the practices of SG grocery with respect to data collected and used by Grocery Factory only in connection with this website with links to this policy are governed by Grocery Factory privacy policy (\"\Privacy Policy\") as amended from time to time and not the privacy policy in effect at the time the data was collected. "
                      "Please regularly review our Privacy Policy. "
                      "If you have objections to the Privacy Policy, you can immediately contact us.",
                      style: AppStyle.contentPrivacy,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text(
                          "Information collected:",
                          style: AppStyle.subtitlePrivacy,
                        ),
                      ],
                    ),
                    Text(
                      "SG grocery collects the details provided by you on registration together with information we learn about you from your use of our service and your visits to our website. We also collect information about the transactions you undertake including details of payment cards used. We may collect additional information in connection with your participation in any promotions or competitions offered by us and information you provide when giving us feedback or completing profile forms. We also monitor customer traffic patterns and site usage which enables us to improve the services we provide.",
                      style: AppStyle.contentPrivacy,
                    ),
                    Text(
                      "Use of your information and your preferences: We will use your information to provide and personalize our service. "
                      "We will also use your contact details to regularly communicate with you. We may use your information to send you to offer and news from Grocery Factory and services, for this we may contact you by post, email, or telephone for these purposes. We like to hear your views to help us improve our service.",
                      style: AppStyle.contentPrivacy,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text(
                          "Use of your information and your",
                          style: AppStyle.subtitlePrivacy,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          "preferences: ",
                          style: AppStyle.subtitlePrivacy,
                        ),
                      ],
                    ),
                    Text(
                      "We will use your information to provide and personalize our service. We will also use your contact details to regularly communicate with you. We may use your information to send you to offer and news from SG Groecery and services, for this we may contact you by post, email, or telephone for these purposes. We like to hear your views to help us improve our service.",
                      style: AppStyle.contentPrivacy,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text(
                          "Legal Disclaimer: ",
                          style: AppStyle.subtitlePrivacy,
                        ),
                      ],
                    ),
                    Text(
                      "We reserve the right to disclose your personally identifiable information as required by law and when believe it is necessary to share information in order to investigate, prevent, or take action regarding illegal activities, suspected fraud, situations involving potential threats to the physical safety of any person, violations of SG Grocery in terms of use, or as otherwise required by law.",
                      style: AppStyle.contentPrivacy,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text(
                          "Changes in this Privacy Statement: ",
                          style: AppStyle.subtitlePrivacy,
                        ),
                      ],
                    ),
                    Text(
                      "SG Grocery reserve the right to modify this privacy statement at any time, so please review it time to time. If we make material changes to this policy, we will notify you here.",
                      style: AppStyle.contentPrivacy,
                    ),
                    SizedBox(
                      height: 28,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
