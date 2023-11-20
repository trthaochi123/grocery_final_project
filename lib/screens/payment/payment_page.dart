import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sg_grocery_project/screens/myWallet/my_wallet_page.dart';
import 'package:sg_grocery_project/widgets/add_address_widget.dart';
import 'package:sg_grocery_project/widgets/button_normal.dart';

import '../../base/colors/app_colors.dart';
import '../../base/images/app_images.dart';
import '../../base/strings/app_strings.dart';
import '../../base/styles/app_styles.dart';
import '../../data/local/db_helper.dart';
import '../../model/address.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/text_field_widget.dart';
import '../../widgets/textfield_address.dart';
import '../editAddress/edit_address.dart';
import '../myAddresses/widget/address_item.dart';
import '../newAddress/index.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int? selectedRadio;
  bool showCard = false;
  List<String> assets = [
    AppImage.cardPayment1,
    AppImage.cardPayment2,
  ];

  int currentIndex = 0;
  final _controller = PageController();

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final infoController = TextEditingController();
  final codeController = TextEditingController();

  List<Address> address = [];

  @override
  void initState() {
    loadAddress();
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int? val) {
    setState(() {
      selectedRadio = val;
      showCard = true; // Hiển thị text khi radio được chọn
    });
  }

  Future<void> loadAddress() async {
    final db = await DBHelper.instance.database;
    final data = await db.rawQuery('SELECT * FROM addressTable');
    setState(() {
      address = List.generate(data.length, (index) {
        return Address(
          id: int.parse(data[index]['id'].toString()),
          country: data[index]['country'].toString(),
          state: data[index]['state'].toString(),
          city: data[index]['city'].toString(),
          pincode: data[index]['pincode'].toString(),
          type: data[index]['type'].toString(),
          isCheck: int.parse(data[index]['isCheck'].toString()) == 1,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        textTitle: "Payment",
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
          child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // CONTACT DETAILS
                const SizedBox(
                  height: 8,
                ),

                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Contact Details",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "SemiBold",
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextFieldAddress(
                    controller: firstNameController,
                    hintText: ContactUsPageString.firstName,
                    hintStyle: AppStyle.hintTextStyle,
                    horizontal: 1,
                    vertical: 6,
                    contentHorizontal: 20,
                    contentVertical: 10,
                    inputType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextFieldAddress(
                    controller: lastNameController,
                    hintText: ContactUsPageString.lastName,
                    hintStyle: AppStyle.hintTextStyle,
                    horizontal: 1,
                    vertical: 6,
                    contentHorizontal: 20,
                    contentVertical: 10,
                    inputType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextFieldAddress(
                    controller: emailController,
                    hintText: ContactUsPageString.email,
                    hintStyle: AppStyle.hintTextStyle,
                    horizontal: 1,
                    vertical: 6,
                    contentHorizontal: 20,
                    contentVertical: 10,
                    inputType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextFieldAddress(
                    controller: phoneNumberController,
                    hintText: ContactUsPageString.phoneNumber,
                    hintStyle: AppStyle.hintTextStyle,
                    horizontal: 1,
                    vertical: 6,
                    contentHorizontal: 20,
                    contentVertical: 10,
                    inputType: TextInputType.emailAddress,
                  ),
                ),

                SizedBox(
                  height: 28,
                ),

                // CHOOSE ADDRESS
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Choose Delivery Address",
                    style: TextStyle(fontSize: 18, fontFamily: "SemiBold"),
                  ),
                ),

                SizedBox(
                  height: 12,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    height: 180,
                    child: ListView.builder(
                        itemCount: address.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Checkbox(
                                shape: const CircleBorder(),
                                value: address[index].isCheck,
                                onChanged: (bool? value) {
                                  setState(() {
                                    for (int i = 0; i < address.length; i++) {
                                      address[i].isCheck = false;
                                      updateAddress(Address(
                                        id: address[i].id,
                                        country: address[i].country,
                                        state: address[i].state,
                                        city: address[i].city,
                                        pincode: address[i].pincode,
                                        type: address[i].type,
                                        isCheck: false,
                                      ));
                                    }
                                    address[index].isCheck = true;
                                    updateAddress(Address(
                                      id: address[index].id,
                                      country: address[index].country,
                                      state: address[index].state,
                                      city: address[index].city,
                                      pincode: address[index].pincode,
                                      type: address[index].type,
                                      isCheck: true,
                                    ));
                                  });
                                },
                              ),
                              AddressItem(
                                country: address[index].country,
                                state: address[index].state,
                                city: address[index].city,
                                pincode: address[index].pincode,
                                type: address[index].type,
                                clickEdit: () async {
                                  final resultEdit = await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EditAddress(
                                            editAddress: address[index])),
                                  );
                                  if (resultEdit == true) {
                                    loadAddress();
                                  }
                                },
                                clickDelete: () => showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) => AlertDialog(
                                    title: const Text(
                                        'Do you want to delete this address?'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'Cancel'),
                                        child: const Text('CANCEL'),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          setState(() {
                                            if (address[index].id == null) {
                                            } else {
                                              deleteAddress(address[index].id!);
                                              address.removeAt(index);
                                              Navigator.pop(context);
                                            }
                                          });
                                        },
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  ),
                                ),
                                iconType: checkIconType(index: index),
                              )
                            ],
                          );
                        }),
                  ),
                ),

                SizedBox(
                  height: 12,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () async {
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 600,
                                width: double.infinity,
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: AddAddressWidget()),
                                ),
                              );
                            },
                          );
                        },
                        child:
                            SvgPicture.asset("assets/icons/ic_address_plus.svg"),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        MyAddressPageString.addNewAddress,
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.greenMainColor,
                          fontFamily: "SemiBold",
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 32,
                ),

                // DO YOU HAVE PROMO CODE
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Do you have a promo code / Coupon ?",
                    style: TextStyle(fontSize: 18, fontFamily: "SemiBold"),
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextFormField(
                    controller: codeController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(12)),
                        labelText: "Enter your code",
                        filled: true,
                        fillColor: Colors.grey[250],
                        prefixIcon: Icon(Icons.credit_card_rounded)),
                  ),
                ),

                SizedBox(
                  height: 28,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonNormalWidget(
                      onClickButton: () {},
                      textButton: "Apply Now",
                      heightButton: 48,
                      widthButton: 180,
                      textStyle: AppStyle.textButtonNameWidget,
                      backgroundColorButton: AppColors.greenMainColor,
                    ),
                  ],
                ),

                SizedBox(
                  height: 40,
                ),

                // CHOOSE PAYMENT METHOD
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Choose payment method",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "SemiBold",
                    ),
                  ),
                ),

                SizedBox(
                  height: 16,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    width: 396,
                    height: 57,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.greenItems),
                    child: buildRadioListTile(1, "Cash On Delivery"),
                  ),
                ),

                SizedBox(
                  height: 16,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    width: 396,
                    height: 57,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.greenItems),
                    child: buildRadioListTile(2, "UPI"),
                  ),
                ),

                SizedBox(
                  height: 16,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    width: 396,
                    height: 57,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.greenItems),
                    child: buildRadioListTile(3, "Wallet"),
                  ),
                ),

                SizedBox(
                  height: 16,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    width: 396,
                    height: 57,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.greenItems),
                    child: buildRadioListTile(4, "Credit / Debit Card"),
                  ),
                ),

                SizedBox(
                  height: 16,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () async {
                          final resultAdd = await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddNewAddress()),
                          );
                          if (resultAdd == true) {
                            loadAddress();
                          }
                        },
                        child:
                            SvgPicture.asset("assets/icons/ic_address_plus.svg"),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "Add New Payment Method",
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.greenMainColor,
                          fontFamily: "SemiBold",
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),

                if (selectedRadio == 4)
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyWalletPage(),
                              ), // Replace 'NewPage' with the desired page
                            );
                          },
                          child: SizedBox(
                            height: 300,
                            width: MediaQuery.of(context).size.width,
                            child: CarouselSlider(
                              options: CarouselOptions(
                                height: 400,
                                enlargeCenterPage: true,
                                aspectRatio: 3.0,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    currentIndex = index;
                                  });
                                },
                              ),
                              items: assets.map((asset) {
                                return Image.asset(asset);
                              }).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                const SizedBox(
                  height: 16,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 364,
                      height: 42,
                      decoration: BoxDecoration(
                        color: AppColors.greenMainColor,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              "Enter CVV",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Light",
                                  color: AppColors.whiteColor),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 242,
                              height: 38,
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(6),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 28,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonNormalWidget(
                      onClickButton: () {},
                      textButton: "Pay \$9.97",
                      heightButton: 48,
                      widthButton: 180,
                      textStyle: AppStyle.textButtonNameWidget,
                      backgroundColorButton: AppColors.greenMainColor,
                    ),
                  ],
                ),

                SizedBox(
                  height: 28,
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our privacy policy.",
                    style: TextStyle(fontFamily: "Light", fontSize: 14),
                  ),
                ),

                const SizedBox(
                  height: 28,
                ),
              ],
            ),

        ),
      ),
    );
  }

  RadioListTile<int> buildRadioListTile(int valueRadio, String titleText) {
    return RadioListTile(
      value: valueRadio,
      groupValue: selectedRadio,
      activeColor: Colors.green,
      title: Text(
        titleText,
        style: TextStyle(
          fontFamily: "Light",
          fontSize: 14,
        ),
      ),
      onChanged: (val) {
        setSelectedRadio(val as int);
      },
    );
  }

  checkIconType({required int index}) {
    if (address[index].type == 'Home') {
      return AppSvg.icHome;
    } else {
      if (address[index].type == 'Office') {
        return AppSvg.icOffice;
      } else {
        return AppSvg.icOffice;
      }
    }
  }
}
