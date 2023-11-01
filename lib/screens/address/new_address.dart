import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sg_grocery_project/data/local/db_helper.dart';
import 'package:sg_grocery_project/widgets/checkbox_address.dart';
import 'package:sg_grocery_project/widgets/textfield_address.dart';

import '../../base/colors/app_colors.dart';
import '../../base/styles/app_styles.dart';
import '../../model/address.dart';
import '../../widgets/button_normal.dart';
import '../../widgets/custom_appbar.dart';

class NewAddress extends StatefulWidget {
  final Address? address;

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

  @override
  void initState() {
    if (widget.address != null) {
      countryController.text = widget.address!.country.toString();
      stateController.text = widget.address!.state.toString();
      cityController.text = widget.address!.city.toString();
      pinCodeController.text = widget.address!.pinCode.toString();
    }
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    itemTextField(TextEditingController controller, String hintText) {
      return Column(
        children: [
          TextFieldAddress(
            controller: controller,
            hintText: hintText,
            hintStyle: AppStyle.hintTextStyle,
            horizontal: 40,
            vertical: 6, contentHorizontal: 50, contentVertical: 10,
          ),
        ],
      );
    }

    FutureOr<void> onClick() async {
      if (widget.address == null) {
        // add new
        final result = await db.addAddress(
          Address(
            country: countryController.text.toString(),
            state: stateController.text.toString(),
            city: cityController.text.toString(),
            pinCode: pinCodeController.text.toString(),
          ),
        );
        print("result: $result");
      } else {
        await db.updateAddress(
          widget.address!.id!,
          Address(
            country: countryController.text.toString(),
            state: stateController.text.toString(),
            city: cityController.text.toString(),
            pinCode: pinCodeController.text.toString(),
          ),
        );
      }
      Navigator.pop(context, true);
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
              itemTextField(countryController, "Country"),
              const SizedBox(
                height: 4,
              ),
              itemTextField(stateController, "State"),
              const SizedBox(
                height: 4,
              ),
              itemTextField(cityController, "City"),
              const SizedBox(
                height: 4,
              ),
              itemTextField(pinCodeController, "Pincode"),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 44),
                child: Row(
                  children: const [
                    CheckBoxAddress(textCheckbox: "Home"),
                    SizedBox(
                      width: 16,
                    ),
                    CheckBoxAddress(textCheckbox: "Work / Office"),
                    SizedBox(
                      width: 16,
                    ),
                    CheckBoxAddress(textCheckbox: "Other"),
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

