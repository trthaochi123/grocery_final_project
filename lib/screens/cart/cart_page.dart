import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sg_grocery_project/base/images/app_images.dart';
import 'package:sg_grocery_project/base/strings/app_strings.dart';
import 'package:sg_grocery_project/base/strings/db_query_strings.dart';
import 'package:sg_grocery_project/data/local/db_helper.dart';
import 'package:sg_grocery_project/screens/payment/payment_page.dart';
import 'package:sg_grocery_project/widgets/button_normal.dart';
import 'package:sg_grocery_project/widgets/cart_item.dart';
import 'package:sg_grocery_project/widgets/custom_appbar.dart';
import 'package:sg_grocery_project/widgets/ticket_widget.dart';

import '../../base/colors/app_colors.dart';
import '../../base/styles/app_styles.dart';
import '../../model/cart_db.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<StatefulWidget> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<CartDB> carts = [];

  // // xu ly DB
  // @override
  // void initState() {
  //   loadCart();
  //   super.initState();
  // }
  //
  // Future<void> loadCart() async {
  //   final db = await DBHelper.instance.database;
  //   final data = await db.query(AppQueryString.tableCarts);
  //   setState(() {
  //     carts = List.generate(data.length, (index) {
  //       return CartDB(
  //         name: data[index]["name"].toString(),
  //         weight: data[index]["weight"].toString(),
  //       );
  //     });
  //   });
  // }

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
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              child: Row(
                children: [
                  Text(
                    CartPageString.tomorrowTime,
                    style: AppStyle.tomorrowTime,
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
              imagePath: AppImage.imgCartItem4,
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
              imagePath: AppImage.imgCartItem2,
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
              imagePath: AppImage.imgCartItem5,
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
            Center(
              child: Column(
                children: [
                  Text(
                    CartPageString.promoCode,
                    style: AppStyle.promoCode,
                  ),
                  Text(
                    CartPageString.onPaymentScreen,
                    style: AppStyle.onPaymentScreen,
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // ------ PAYMENT ------
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  CartPageString.paymentDetail,
                  style: AppStyle.paymentDetail,
                ),
              ),
            ),

            const SizedBox(
              height: 16,
            ),

            // table
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              CartPageString.totalMRP,
                              style: AppStyle.paymentItems,
                            ),
                            Text(
                              CartPageString.totalPrice,
                              style: AppStyle.paymentItems,
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Divider(
                          thickness: 0.6,
                          color: Colors.grey[400],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              CartPageString.discount,
                              style: AppStyle.paymentItems,
                            ),
                            Text(
                              CartPageString.discountPrice,
                              style: AppStyle.paymentItems,
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Divider(
                          thickness: 0.6,
                          color: Colors.grey[400],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              CartPageString.shippingCharges,
                              style: AppStyle.paymentItems,
                            ),
                            Text(
                              CartPageString.shippingPrice,
                              style: AppStyle.paymentItems,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 396,
                    height: 61,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                      ),
                      color: AppColors.greenCartTotal,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            CartPageString.totalCart,
                            style: AppStyle.totalCart,
                          ),
                          Text(
                            CartPageString.totalCartPrice,
                            style: AppStyle.totalCart,
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
              onClickButton: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentPage(),
                  ),
                );
              },
              textButton: CartPageString.textButton,
              heightButton: 50,
              widthButton: 200,
              textStyle: AppStyle.textButtonCartStyle,
              backgroundColorButton: AppColors.greenMainColor,
            ),

            const SizedBox(
              height: 38,
            ),

            // Container(
            //   height: 200,
            //   child: ListView.builder(
            //     itemCount: carts.length,
            //     itemBuilder: (context, int index) {
            //       return ListTile(
            //         leading: Text(carts[index].name),
            //         title: Text(carts[index].weight),
            //       );
            //     },
            //
            //   ),
            // ),

          ],
        ),
      ),
    );
  }
}
