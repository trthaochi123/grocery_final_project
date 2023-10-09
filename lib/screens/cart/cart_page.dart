import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sg_grocery_project/base/images/app_images.dart';
import 'package:sg_grocery_project/base/strings/app_strings.dart';
import 'package:sg_grocery_project/widgets/button_normal.dart';
import 'package:sg_grocery_project/widgets/cart_item.dart';
import 'package:sg_grocery_project/widgets/custom_appbar.dart';
import 'package:sg_grocery_project/widgets/ticket_widget.dart';

import '../../base/colors/app_colors.dart';
import '../../base/styles/app_styles.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<StatefulWidget> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        textTitle: CartPageString.myCart,
        backgroundColor: AppColors.whiteColor,
        textStyle: AppStyle.textBlackLabelPage,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ----- TOMORROW ------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  const Text(
                    CartPageString.tomorrowTime,
                    style: TextStyle(fontSize: 20, fontFamily: "SemiBold"),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(AppSvg.icCartDown),
                  ),
                ],
              ),
            ),

            // ----- ITEM -----
            const CartItem(
              imagePath: "assets/images/img_cart_item4.png",
              namePrd: CartPageString.namePrd1,
              weightPrd: CartPageString.weightPrd,
              pricePrd: CartPageString.pricePrd1,
              realityPrice: CartPageString.realityPrice1,
              width: 68,
              height: 68,
            ),
            const SizedBox(
              height: 20,
            ),
            const CartItem(
              imagePath: "assets/images/img_cart_item2.png",
              namePrd: CartPageString.namePrd2,
              weightPrd: CartPageString.weightPrd,
              pricePrd: CartPageString.pricePrd2,
              realityPrice: CartPageString.realityPrice2,
              width: 68,
              height: 68,
            ),
            const SizedBox(
              height: 20,
            ),
            const CartItem(
              imagePath: "assets/images/img_cart_item5.png",
              namePrd: CartPageString.namePrd3,
              weightPrd: CartPageString.weightPrd,
              pricePrd: CartPageString.pricePrd3,
              realityPrice: CartPageString.realityPrice3,
              width: 68,
              height: 68,
            ),

            const SizedBox(
              height: 30,
            ),

            // ------ TICKET ------
            const TicketWidget(
              xPath: AppSvg.icXGreen,
              firstLineText: CartPageString.flatText,
              secondLineText: CartPageString.saleOffText,
              thirdLineText: CartPageString.detailText1,
              fourthLineText: CartPageString.detailText2,
              codeText: CartPageString.getFirst,
              backgroundColor: AppColors.greenItemCart,
            ),
            const SizedBox(
              height: 16,
            ),
            const TicketWidget(
              xPath: AppSvg.icXYellow,
              firstLineText: CartPageString.get5off,
              thirdLineText: CartPageString.detailText3,
              fourthLineText: CartPageString.detailText4,
              codeText: CartPageString.dollar5,
              backgroundColor: AppColors.yellowItemCart,
              secondLineText: '',
            ),

            const SizedBox(
              height: 22,
            ),

            // ------ PROMO CODE ------
            const Center(
              child: Column(
                children: [
                  Text(
                   CartPageString.promoCode,
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.greenItemCart,
                        fontFamily: "Medium"),
                  ),
                  Text(
                    CartPageString.onPaymentScreen,
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.greenItemCart,
                        fontFamily: "Medium"),
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // ------ PAYMENT ------
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  CartPageString.paymentDetail,
                  style: TextStyle(fontSize: 22, fontFamily: "SemiBold"),
                ),
              ),
            ),

            const SizedBox(
              height: 16,
            ),
            Container(
              width: 396,
              height: 201,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(-5, 5),
                  ),
                ],
                color: AppColors.whiteColor,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28,
                      vertical: 16,
                    ),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              CartPageString.totalMRP,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "ExtraLight",
                              ),
                            ),
                            Text(
                              CartPageString.totalPrice,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "ExtraLight",
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Divider(
                          thickness: 0.6,
                          color: Colors.grey[400],
                        ),
                        const SizedBox(height: 4),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              CartPageString.discount,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "ExtraLight",
                              ),
                            ),
                            Text(
                              CartPageString.discountPrice,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "ExtraLight",
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Divider(
                          thickness: 0.6,
                          color: Colors.grey[400],
                        ),
                        const SizedBox(height: 4),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              CartPageString.shippingCharges,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "ExtraLight",
                              ),
                            ),
                            Text(
                              CartPageString.shippingPrice,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "ExtraLight",
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 396,
                    height: 52,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0)),
                      color: AppColors.greenCartTotal,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 28),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            CartPageString.totalCart,
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "SemiBold",
                            ),
                          ),
                          Text(
                            CartPageString.totalCartPrice,
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "SemiBold",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 32,
            ),

            // ------ BUTTON ------
            ButtonNormalWidget(
              onClickButton: () {},
              textButton: CartPageString.textButton,
              heightButton: 50,
              widthButton: 200,
              textStyle: AppStyle.textButtonCartStyle,
              backgroundColorButton: AppColors.greenMainColor,
            ),

            const SizedBox(
              height: 38,
            ),
          ],
        ),
      ),
    );
  }
}
