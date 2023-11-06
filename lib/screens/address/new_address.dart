import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sg_grocery_project/data/local/db_helper.dart';
import 'package:sg_grocery_project/widgets/textfield_address.dart';

import '../../base/colors/app_colors.dart';
import '../../base/styles/app_styles.dart';
import '../../model/address.dart';
import '../../widgets/button_normal.dart';
import '../../widgets/custom_appbar.dart';

class NewAddress extends StatefulWidget {
  final Address? address; // bien address kieu DL Address

  const NewAddress({super.key, this.address});

  @override
  State<NewAddress> createState() => _NewAddressState();
}

class _NewAddressState extends State<NewAddress> {

  final countryController = TextEditingController();
  final stateController = TextEditingController();
  final cityController = TextEditingController();
  final pinCodeController = TextEditingController();
  final db = DBHelper.instance;
  int type = 0;

  @override
  void initState() {
    if (widget.address != null) {
      countryController.text = widget.address!.country.toString();
      stateController.text = widget.address!.state.toString();
      cityController.text = widget.address!.city.toString();
      pinCodeController.text = widget.address!.pinCode.toString();
      setState(() {
        type = widget.address!.typeAddress.toInt();
      });
    }
    super.initState();
  }

  dialogMising() {
    return showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Address must be filled in completely'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              setState(() {
                Navigator.of(context).pop();
              });
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    itemTextField(TextEditingController controller, String hintText, TextInputType inputType) {
      return Column(
        children: [
          TextFieldAddress(
            inputType: inputType,
            controller: controller,
            hintText: hintText,
            hintStyle: AppStyle.hintTextStyle,
            horizontal: 40,
            vertical: 6,
            contentHorizontal: 50,
            contentVertical: 10,
          ),
        ],
      );
    }

    FutureOr<void> onClick() async {
      if (widget.address == null) {
        if (countryController.text.isEmpty ||
            stateController.text.isEmpty ||
            cityController.text.isEmpty ||
            pinCodeController.text.isEmpty) {
          dialogMising();
        } else {
          await db.addAddress(
            Address(
              country: countryController.text.toString(),
              state: stateController.text.toString(),
              city: cityController.text.toString(),
              pinCode: pinCodeController.text.toString(),
              typeAddress: type,
              isSelected: false,
            ),
          );
          Navigator.pop(context, true);
        }
      } else {
        await db.updateAddress(
          widget.address!.id!,
          Address(
            country: countryController.text.toString(),
            state: stateController.text.toString(),
            city: cityController.text.toString(),
            pinCode: pinCodeController.text.toString(),
            typeAddress: type,
          ),
        );
      }
    }


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
        textTitle: widget.address == null ? "Add New Address" : "Edit Address",
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
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 44),
          child: Column(
            children: [
              itemTextField(countryController, "Country", TextInputType.text),
              const SizedBox(
                height: 4,
              ),
              itemTextField(stateController, "State", TextInputType.text),
              const SizedBox(
                height: 4,
              ),
              itemTextField(cityController, "City", TextInputType.text),
              const SizedBox(
                height: 4,
              ),
              itemTextField(pinCodeController, "Pincode", TextInputType.number),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 44),
                child: Row(
                  children: [
                    Checkbox(
                        value: type == 1,
                        onChanged: (bool? value) {
                          setState(() {
                            type = value == true ? 1 : 0;
                          });
                        }),
                    Text(
                      "Homeee",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Checkbox(
                        value: type == 3,
                        onChanged: (bool? value) {
                          setState(() {
                            type = value == true ? 3 : 0;
                          });
                        }),
                    Text(
                      "Office",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Checkbox(
                        value: type == 2,
                        onChanged: (bool? value) {
                          setState(() {
                            type = value == true ? 2 : 0;
                          });
                        }),
                    Text(
                      "Other",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              ButtonNormalWidget(
                onClickButton: onClick,
                textButton: widget.address == null ? "Add New" : "Update",
                heightButton: 50,
                widthButton: 200,
                textStyle: AppStyle.textButtonCartStyle,
                backgroundColorButton: AppColors.greenMainColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
