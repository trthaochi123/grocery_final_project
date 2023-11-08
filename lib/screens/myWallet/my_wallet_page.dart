import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sg_grocery_project/widgets/wallet_widget.dart';

import '../../base/colors/app_colors.dart';
import '../../base/strings/app_strings.dart';
import '../../base/styles/app_styles.dart';
import '../../widgets/custom_appbar.dart';

class MyWalletPage extends StatefulWidget {
  const MyWalletPage({super.key});

  @override
  State<MyWalletPage> createState() => _MyWalletPageState();
}

class _MyWalletPageState extends State<MyWalletPage> {
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
        textTitle: MyWalletPageString.pageTitle,
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
              SizedBox(height: 28,),
              Text(
                MyWalletPageString.myBalance,
                style: AppStyle.myBalance,
              ),
              SizedBox(height: 16,),
              Text(
                MyWalletPageString.twentyDollar,
                style: AppStyle.twentyDollar,
              ),
              SizedBox(height: 16,),
              Text(
                MyWalletPageString.useToPay,
                style: AppStyle.useToPay,
              ),
              SizedBox(
                height: 20,
              ),
              WalletWidget(
                date: MyWalletPageString.date1,
                title: MyWalletPageString.cashBack,
                subTitle: MyWalletPageString.transaction,
                price: MyWalletPageString.twoDollar,
                colorPrice: AppColors.greenMainColor,
              ),
              WalletWidget(
                date: MyWalletPageString.date2,
                title: MyWalletPageString.spentOn,
                subTitle: MyWalletPageString.transaction,
                price: MyWalletPageString.fiveDollar,
                colorPrice: Colors.red,
              ),
              WalletWidget(
                date: MyWalletPageString.date3,
                title: MyWalletPageString.cashBack,
                subTitle: MyWalletPageString.transaction,
                price: MyWalletPageString.threeDollar,
                colorPrice: AppColors.greenMainColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
