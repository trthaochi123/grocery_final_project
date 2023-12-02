import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sg_grocery_project/widgets/my_order_widget.dart';
import 'package:sg_grocery_project/widgets/my_order_widget_2.dart';

import '../../base/colors/app_colors.dart';
import '../../base/strings/app_strings.dart';
import '../../base/styles/app_styles.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/outline_button.dart';

class MyOrdersPage extends StatelessWidget {
  const MyOrdersPage({super.key});

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
        textTitle: "My Orders",
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
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                ),
                child: Row(
                  children: [
                    Text(
                      "Order History",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 1200,
                child: ListView(
                  children: const [
                    MyOrderWidget(
                      hasOrder: true,
                      image1: "assets/images/img_cart_item4.png",
                      image2: "assets/icons/ic_myorder_hint.svg",
                      title: "Arrives Tomorrow",
                      subTitle: "7AM - 11 PM",
                    ),
                    MyOrderWidget(
                      image1: "assets/images/img_myorder_item2.png",
                      image2: "assets/icons/ic_myorder_hint.svg",
                      title: "Arrives Tomorrow",
                      subTitle: "7AM - 11 PM",
                    ),
                    MyOrderWidget(
                      image1: "assets/images/img_myorder_item4.png",
                      image2: "assets/icons/ic_myorder_hint.svg",
                      title: "Arrives Tomorrow",
                      subTitle: "7AM - 11 PM",
                    ),
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
