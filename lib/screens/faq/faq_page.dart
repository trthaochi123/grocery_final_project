import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sg_grocery_project/widgets/button_normal.dart';
import 'package:sg_grocery_project/widgets/expansive_widget.dart';

import '../../base/colors/app_colors.dart';
import '../../base/styles/app_styles.dart';
import '../../widgets/custom_appbar.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({super.key});

  @override
  State<StatefulWidget> createState() => _FaqPage();
}

class _FaqPage extends State<FaqPage> {
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
        textTitle: "FAQ",
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
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              children: [
                ExpansiveWidget(
                    title: "Select Category",
                    content: "Placing an order is very simple.",
                    backgroundColor: Colors.grey.shade300),
                ExpansiveWidget(
                    title: "Where do you Deliver?",
                    content:
                        "Placing an order is very simple. Just register on the SG Grocery website/mobile application, pick your choice of products with a wide range of product selection in the online store and proceed to checkout or just call customer care and place an order. i.e. 1800-123-1947 ",
                    backgroundColor: AppColors.greenFaq),
                ExpansiveWidget(
                    title: "How can I order at SG Grocery? ",
                    content: "Placing an order is very simple.",
                    backgroundColor: AppColors.greenFaq),
                ExpansiveWidget(
                    title:
                        "How do I know at what time I will receive my Delivery? ",
                    content: "Placing an order is very simple.",
                    backgroundColor: AppColors.greenFaq),
                ExpansiveWidget(
                    title: "What is minimum order value?",
                    content: "Placing an order is very simple.",
                    backgroundColor: AppColors.greenFaq),
                ExpansiveWidget(
                    title: "What if I want to return something?",
                    content: "Placing an order is very simple.",
                    backgroundColor: AppColors.greenFaq),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Text(
                      "Not Listed your Question/Query?",
                      style: TextStyle(fontSize: 21, fontFamily: "SemiBold"),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),

                Container(
                  width: 396,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Write your Question/Query here",
                      style: TextStyle(fontFamily: "ExtraLight", fontSize: 14),
                    ),
                  ),
                ),

                SizedBox(
                  height: 28,
                ),

                ButtonNormalWidget(
                    onClickButton: () {},
                    textButton: "Submit",
                    heightButton: 50,
                    widthButton: 208,
                    textStyle: AppStyle.textButtonNameWidget,
                    backgroundColorButton: AppColors.greenMainColor)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
