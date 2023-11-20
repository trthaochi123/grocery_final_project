import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

// LOGIN
class AppStyle {
  static TextStyle sgLogo = const TextStyle(
    fontSize: 29,
    fontFamily: "Light",
  );

  static TextStyle groceryLogo = const TextStyle(
    fontSize: 29,
    color: AppColors.greenMainColor,
    fontFamily: "Medium",
  );

  static TextStyle loginLable = const TextStyle(
    fontSize: 24,
    color: AppColors.greenMainColor,
    fontFamily: "SemiBold",
  );

  static TextStyle orContinueWith = const TextStyle(
    color: AppColors.greyColor,
    fontSize: 16,
    fontFamily: "Light",
  );

  static TextStyle question = const TextStyle(
    color: AppColors.greyColor,
    fontFamily: "Light",
    fontSize: 16,
  );

  // REGISTER
  static TextStyle sgRegister = const TextStyle(
    fontSize: 28,
    fontFamily: "Light",
  );

  static TextStyle groceryRegister = const TextStyle(
    fontSize: 28,
    color: AppColors.greenMainColor,
    fontFamily: "Medium",
  );

  static TextStyle registerLable = const TextStyle(
    fontSize: 21,
    color: AppColors.greenMainColor,
    fontFamily: "SemiBold",
  );

  static TextStyle orContinueWithRegister = const TextStyle(
    color: AppColors.greyColor,
    fontSize: 16,
    fontFamily: "Light",
  );

  static TextStyle questionRegister = const TextStyle(
    color: AppColors.greyColor,
    fontFamily: "Light",
    fontSize: 16,
  );

  // SPLASH PAGE
  static TextStyle sgSplash = const TextStyle(
    fontSize: 44,
    fontFamily: "Light",
  );

  static TextStyle grocerySplash = const TextStyle(
    fontSize: 44,
    color: AppColors.greenMainColor,
    fontFamily: "SemiBold",
  );

  static TextStyle yourNeeds = const TextStyle(
    fontSize: 20,
    color: AppColors.greenMainColor,
    fontFamily: "Light",
  );

  // HOMEPAGE
  static TextStyle hintSearch = const TextStyle(
    fontFamily: "light",
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle hintTextStyle = const TextStyle(
    fontFamily: "Light",
    color: AppColors.greyColor,
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

  static TextStyle textFieldAdress = const TextStyle(
    fontFamily: "Light",
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

  static TextStyle getTwentyCashback = const TextStyle(
    fontSize: 24,
    fontFamily: "SemiBold",
    color: Color.fromRGBO(63, 138, 154, 1),
  );

  static TextStyle onAllBabyProducts = const TextStyle(
    fontSize: 16,
    fontFamily: "Light",
    color: Color.fromRGBO(63, 138, 154, 1),
  );

  static TextStyle shopNow = const TextStyle(
    color: AppColors.whiteColor,
    fontFamily: "SemiBold",
    fontSize: 16,
  );

  // FruitsPage
  static TextStyle titleFruits = const TextStyle(
    fontFamily: "SemiBold",
    fontSize: 18,
    color: AppColors.greyFruits,
  );

  static TextStyle price2Fruits = const TextStyle(
    fontFamily: "SemiBold",
    fontSize: 14,
    color: AppColors.greyFruits,
  );

  static TextStyle priceFruits = const TextStyle(
    fontFamily: "SemiBold",
    fontSize: 18,
    color: AppColors.greenMainColor,
  );

  static TextStyle amount = const TextStyle(
    fontFamily: "SemiBold",
    fontSize: 18,
    color: AppColors.greenMainColor,
  );
  static TextStyle subscribeButton = const TextStyle(
    fontSize: 11,
  );

  static TextStyle buyOneButton = const TextStyle(
    fontSize: 11,
  );

  // Explore Page

  // Cart Page
  static TextStyle tomorrowTime = const TextStyle(
    fontSize: 20,
    fontFamily: "SemiBold",
  );

  static TextStyle promoCode = const TextStyle(
    fontSize: 16,
    color: AppColors.greenItemCart,
    fontFamily: "Medium",
  );

  static TextStyle onPaymentScreen = const TextStyle(
    fontSize: 16,
    color: AppColors.greenItemCart,
    fontFamily: "Medium",
  );

  static TextStyle paymentDetail = const TextStyle(
    fontSize: 22,
    fontFamily: "SemiBold",
  );

  static TextStyle paymentItems = const TextStyle(
    fontSize: 16,
    fontFamily: "ExtraLight",
  );

  static TextStyle totalCart = const TextStyle(
    fontSize: 18,
    fontFamily: "SemiBold",
  );

  static TextStyle textButtonMediumStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 18,
    fontFamily: "Regular",
  );

  static TextStyle textButtonSmallStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 14,
    fontFamily: "Medium",
  );

  static TextStyle textBlackLabelPage = const TextStyle(
    color: Colors.black87,
    fontWeight: FontWeight.bold,
    fontSize: 20,
    fontFamily: "Medium",
  );

  static TextStyle textWhiteLabelPage = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 20,
    fontFamily: "Medium",
  );

  static TextStyle textNameItemCart = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 18,
    fontFamily: "Medium",
  );

  static TextStyle textWeightItemCart = const TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
    fontSize: 14,
    fontFamily: "Regular",
  );

  static TextStyle textPriceItemCart = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 18,
    fontFamily: "SemiBold",
  );

  static TextStyle textButtonCartStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 18,
    fontFamily: "Medium",
  );

  // ----- WIDGET -----
  // App_icon
  static TextStyle appIconNameStyle = const TextStyle(
    fontFamily: "Medium",
    fontSize: 20,
  );

  static TextStyle appIconUserStyle = const TextStyle(
    fontFamily: "Medium",
    fontSize: 20,
  );

  // Bar_label
  static TextStyle firstBarLabel = const TextStyle(
    fontSize: 18,
    fontFamily: "SemiBold",
  );

  static TextStyle textButtonBarLabelStyle = const TextStyle(
    fontSize: 15,
  );

  static TextStyle secondBarLabel = const TextStyle(
    fontSize: 15,
    fontFamily: "SemiBold",
    color: AppColors.greenMainColor,
  );

  // Cart_item
  static TextStyle namePrd = const TextStyle(
    fontSize: 18,
    fontFamily: "Regular",
  );

  static TextStyle weightPrd = const TextStyle(
    fontSize: 14,
    fontFamily: "Light",
  );

  static TextStyle realityPrice = const TextStyle(
    fontFamily: "SemiBold",
    fontSize: 18,
  );

  static TextStyle pricePrd = const TextStyle(
    fontFamily: "Regular",
    fontSize: 18,
    color: Colors.grey,
    decoration: TextDecoration.lineThrough,
    decorationColor: Colors.grey,
  );

  static TextStyle amountPrd = const TextStyle(
    color: AppColors.greenMainColor,
    fontSize: 24,
    fontFamily: "SemiBold",
  );

  // Cate_items
  static TextStyle textLabelCart = const TextStyle(
    fontFamily: "SemiBold",
    color: AppColors.whiteColor,
  );

  // Deal_prd_item
  static TextStyle textLabelDealPrd = const TextStyle(
    color: AppColors.textItems,
    fontSize: 16,
    fontFamily: "SemiBold",
  );

  static TextStyle detailItem = const TextStyle(
    fontSize: 11,
    color: AppColors.greenMainColor,
    fontFamily: "SemiBold",
  );

  // explore_item
  static TextStyle nameExplItem = const TextStyle(
    fontSize: 12,
    fontFamily: "Medium",
  );

  static TextStyle weightExplItem = const TextStyle(
    fontSize: 12,
    fontFamily: "ExtraLight",
  );

  static TextStyle priceExplItem = const TextStyle(
    fontSize: 12,
    fontFamily: "SemiBold",
  );

  //input_field
  static TextStyle titleInputField = const TextStyle(
    fontSize: 17,
    fontFamily: "Medium",
  );

  // product_items
  static TextStyle namePrdWidget = const TextStyle(
    color: AppColors.textItems,
    fontFamily: "Medium",
  );

  static TextStyle pricePrdWidget = const TextStyle(
    color: AppColors.textItems,
    fontFamily: "SemiBold",
  );

  static TextStyle numberSalePrd = const TextStyle(
    fontSize: 14,
    color: AppColors.whiteColor,
    fontFamily: "SemiBold",
  );

  static TextStyle offSalePrd = const TextStyle(
    fontSize: 14,
    color: AppColors.whiteColor,
    fontFamily: "SemiBold",
  );

  //text_button_widget
  static TextStyle textButtonNameWidget = const TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontFamily: "SemiBold",
  );

  // ticket_widget
  static TextStyle firstLineTextTicket = const TextStyle(
    fontSize: 14,
    fontFamily: "ExtraBold",
    color: Colors.white,
  );

  static TextStyle secondLineTextTicket = const TextStyle(
    fontSize: 20,
    fontFamily: "ExtraBold",
    color: Colors.white,
  );

  static TextStyle thirdLineTextTicket = const TextStyle(
    fontSize: 12,
    fontFamily: "Medium",
    color: Colors.white,
  );

  static TextStyle fourthLineTextTicket = const TextStyle(
    fontSize: 12,
    fontFamily: "Medium",
    color: Colors.white,
  );

  static TextStyle codeStyle = const TextStyle(
    fontSize: 12,
    fontFamily: "Medium",
    color: Colors.white,
  );

  static TextStyle codeTextDetail = const TextStyle(
    fontSize: 2,
    fontFamily: "ExtraBold",
    color: Colors.white,
  );

  // MY SUBSCRIPTION
  static TextStyle textDropdownTitle = const TextStyle(
    fontFamily: "SemiBold",
    fontSize: 16,
  );

  static TextStyle today = const TextStyle(
    fontSize: 18,
    fontFamily: "SemiBold",
  );

  static TextStyle dateMonthYear = const TextStyle(
    fontSize: 18,
    fontFamily: "Light",
    color: AppColors.greyFruits,
  );

  // ACCOUNT
  static TextStyle nameAcc = const TextStyle(
    fontSize: 24,
    fontFamily: "Regular",
  );

  static TextStyle emailAcc = const TextStyle(
    fontSize: 14,
    fontFamily: "Regular",
  );

  static TextStyle textItemAcc = const TextStyle(
    fontSize: 18,
    fontFamily: "Light",
    color: Colors.black,
  );

  static TextStyle textParagraphAbout = TextStyle(
    fontSize: 14,
    fontFamily: "Light",
    color: Colors.black
  );

  static TextStyle whyChooseUs = const TextStyle(
      fontSize: 20,
      fontFamily: "SemiBold",
      color: AppColors.greenMainColor
  );

  static TextStyle weDoNot = const TextStyle(
      fontSize: 16,
      fontFamily: "SemiBold",
      color: Colors.black
  );

  static TextStyle organic = const TextStyle(
      fontSize: 14,
      fontFamily: "SemiBold",
      color: Colors.black
  );

  static TextStyle myBalance = const TextStyle(
      fontSize: 20,
      fontFamily: "SemiBold",
      color: Colors.black
  );

  static TextStyle twentyDollar = const TextStyle(
      fontSize: 24,
      fontFamily: "SemiBold",
      color: AppColors.greenMainColor
  );

  static TextStyle useToPay = const TextStyle(
      fontSize: 16,
      fontFamily: "Light",
  );

  static TextStyle titlePrivacy = const TextStyle(
    fontSize: 22,
    fontFamily: "SemiBold",
    decoration: TextDecoration.underline,
  );

  static TextStyle subTerm = const TextStyle(
    fontSize: 16,
    fontFamily: "SemiBold",
    decoration: TextDecoration.underline,
  );

  static TextStyle subtitlePrivacy = const TextStyle(
    fontSize: 18,
    fontFamily: "SemiBold",
    decoration: TextDecoration.underline,
  );

  static TextStyle lastUpdate = const TextStyle(
    fontSize: 14,
    fontFamily: "Light",
  );

  static TextStyle contentPrivacy = const TextStyle(
    fontSize: 12,
    fontFamily: "Regular",

  );
}
