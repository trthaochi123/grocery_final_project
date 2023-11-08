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

class TermsPage extends StatefulWidget {
  const TermsPage({super.key});

  @override
  State<StatefulWidget> createState() => _TermsPage();
}

class _TermsPage extends State<TermsPage> {
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
        textTitle: "Terms of services",
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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Terms and Conditions",
                      style: AppStyle.titlePrivacy,
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Text(
                  "WELCOME TO ALL SG Grocery, LLC AND THANK YOU FOR REGISTERING WITH US! IT IS IMPORTANT THAT YOU REVIEW THIS AGREEMENT BECAUSE, BY ACCESSING THIS WEBSITE, BY PLACING AN ORDER WITH US BY TELEPHONE, EMAIL, FAX, OR THROUGH THIS WEBSITE, YOU ARE AGREEING TO THE TERMS AND CONDITIONS THAT GOVERN THE USE OF THE SITE AND THE TERMS UPON WHICH WE AGREE TO DELIVER TO YOU. ",
                  style: AppStyle.subTerm,
                ),
                SizedBox(height: 20,),
                Text(
                  "By placing an order with us by telephone, fax, email, or online, you agree to the terms of this Agreement (the “Agreement”) which shall cover the terms of our deliveries to you and your use of our website. This Agreement is between you and All Seasons Grocery, LLC (the “Company” or “All Seasons Grocery”) that states the terms and conditions under which you may use the Site and receive deliveries from us. All Seasons Grocery is the owner of the following trademarks: All Seasons Grocery, www.allseasonsgrocery.com, and the All Seasons Grocery logo. This Agreement is binding on you whether you purchase from us via the telephone, email, fax, or our website.",
                  style: AppStyle.contentPrivacy,
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text(
                      "OUR DELIVERY SERVICE",
                      style: AppStyle.titlePrivacy,
                    )
                  ],
                ),
                Text(
                  "When you place an order, we use all reasonable efforts to deliver to you at the time of your choosing or by 5:00 pm on the day of your arrival. Once you place your order by telephone, fax, email, or online, we will act as bailee for the ordered products. You can modify an existing order at any time up until the order leaves the store by calling our customer service number at 435-655-5071 or 435-655-1914. Please note that we reserve the right to refuse service to anyone. We reserve the right to change the cost of deliveries and/or our delivery fees at any time",
                  style: AppStyle.contentPrivacy,
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text(
                      "PRICE AND AVAILABILITY",
                      style: AppStyle.titlePrivacy,
                    )
                  ],
                ),
                Text(
                  "From time to time, products you order may be unavailable. If we are unable to fulfill your entire order, we will make every reasonable effort to substitute the closest product. We do not set the prices for the items you select on your grocery list. We pay the prices that each individual store has already set.",
                  style: AppStyle.contentPrivacy,
                ),
                Text(
                  "To receive delivery, you do not need to be present to receive your order from our driver. In the case of bad weather or unforeseen delivery complications, deliveries may be delayed. We will make every effort to get your groceries to you by 5:00 pm on the date of your arrival.",
                  style: AppStyle.contentPrivacy,
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text(
                      "PAYMENT",
                      style: AppStyle.titlePrivacy,
                    )
                  ],
                ),
                Text(
                  "We accept only credit/debit cards.  In the event your card is declined, we reserve the right to collect funds for any uncollected transactions owed us should a payment made via credit card be declined. If you fail to pay any fees or charges when due, we may charge such amount directly to the credit card identified in your Customer Account Information and we may suspend or terminate your access to our Service. You shall be responsible and liable for any fees, including but not limited to attorney’s fees and collection costs, that we may incur in our efforts to collect any unpaid balances from you.",
                  style: AppStyle.contentPrivacy,
                ),
                SizedBox(height: 40,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
