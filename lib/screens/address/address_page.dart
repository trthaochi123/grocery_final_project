import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sg_grocery_project/base/colors/app_colors.dart';
import 'package:sg_grocery_project/data/local/db_helper.dart';
import 'package:sg_grocery_project/model/address.dart';
import 'package:sg_grocery_project/screens/address/new_address.dart';
import 'package:sg_grocery_project/widgets/custom_appbar.dart';

import '../../base/styles/app_styles.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  List<Address>? listAddress = [];
  final db = DBHelper.instance;

  @override
  void initState() {
    loadData();
    super.initState();
  }

  Future<void> loadData() async {
    final data = await db.loadAddress();
    setState(() {
      listAddress = data;
    });
  }

  Widget _EditButton(Address? address) {
    return IconButton(
      onPressed: () async {
        final result = await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewAddress(
              address: address,
            ),
          ),
        );
        if (result != null) {
          loadData();
        }
      },
      icon: SvgPicture.asset(
        "assets/icons/ic_address_edit.svg",
      ),
    );
  }

  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _pinCodeController = TextEditingController();

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
        textTitle: "My Addresses",
        backgroundColor: AppColors.greenMainColor,
        textStyle: AppStyle.textWhiteLabelPage,
        alignment: Alignment.centerLeft,
      ),
      backgroundColor: AppColors.greenMainColor,
      body: Container(
        margin: EdgeInsets.only(top: 20),
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 20, left: 16, right: 16),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NewAddress(),
                        ),
                      );
                    },
                    icon: SvgPicture.asset(
                      "assets/icons/ic_address_plus.svg",
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NewAddress(),
                        ),
                      );
                    },
                    child: const Text(
                      "Add New Address",
                      style: TextStyle(
                          fontSize: 20,
                          color: AppColors.greenMainColor,
                          fontFamily: "SemiBold"),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              // Items
              SizedBox(
                height: 500,
                child: ListView.builder(
                  itemCount: listAddress?.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildItemAddress(listAddress?[index]);
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItemAddress(Address? address) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        children: [
          Stack(
            children: [
              SvgPicture.asset("assets/icons/ic_address_red_border_circle.svg"),
              Padding(
                padding: EdgeInsets.only(top: 5, left: 5),
                child: SvgPicture.asset(
                    "assets/icons/ic_address_red_center_circle.svg"),
              ),
            ],
          ),

          SizedBox(
            width: 16,
          ),

          // CARD
          Container(
            width: 362,
            height: 174,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 18, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/icons/ic_address_home.svg",
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              "Home",
                              style: TextStyle(
                                  fontSize: 20, fontFamily: "SemiBold"),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            // THUC CHAT LA CHUYEN DEN EDIT
                            IconButton(
                              onPressed: () async {
                                final result = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NewAddress(
                                      address: address,
                                    ),
                                  ),
                                );
                                if (result != null) {
                                  loadData();
                                }
                              },
                              icon: SvgPicture.asset(
                                "assets/icons/ic_address_edit.svg",
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),

                            // DELETE BUTTON
                            SvgPicture.asset(
                              "assets/icons/ic_address_delete.svg",
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Row(
                      children: [
                        Text(
                          address!.country.toString(),
                          style: TextStyle(fontFamily: "Regular"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Row(
                      children: [
                        Text(
                          address.city.toString(),
                          style: TextStyle(fontFamily: "Regular"),
                        ),
                        const Text(
                          ",",
                          style: TextStyle(fontFamily: "Regular"),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          address.state.toString(),
                          style: TextStyle(fontFamily: "Regular"),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          address.pinCode.toString(),
                          style: TextStyle(fontFamily: "Regular"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
