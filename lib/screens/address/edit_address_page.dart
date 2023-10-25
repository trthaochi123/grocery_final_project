import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sg_grocery_project/widgets/checkbox_address.dart';
import 'package:sg_grocery_project/widgets/textfield_address.dart';

import '../../base/colors/app_colors.dart';
import '../../base/styles/app_styles.dart';
import '../../widgets/button_normal.dart';
import '../../widgets/custom_appbar.dart';

class EditAddress extends StatefulWidget {
  const EditAddress({super.key});

  @override
  State<EditAddress> createState() => _EditAddressState();
}

class _EditAddressState extends State<EditAddress> {
  final countryController = TextEditingController();
  final stateController = TextEditingController();
  final cityController = TextEditingController();
  final pinCodeController = TextEditingController();

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
        textTitle: "Edit Address",
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
          padding: EdgeInsets.only(top: 44),
          child: Column(
            children: [
              TextFieldAddress(
                controller: countryController,
                hintText: "Washington Ave",
                hintStyle: AppStyle.textFieldAdress,
              ),
              SizedBox(height: 4,),
              TextFieldAddress(
                controller: countryController,
                hintText: "Kentucky",
                hintStyle: AppStyle.textFieldAdress,
              ),
              SizedBox(height: 4,),
              TextFieldAddress(
                controller: countryController,
                hintText: "Manchester",
                hintStyle: AppStyle.textFieldAdress,
              ),
              SizedBox(height: 4,),
              TextFieldAddress(
                controller: countryController,
                hintText: "39495",
                hintStyle: AppStyle.textFieldAdress,
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 44),
                child: Row(
                  children: [
                    CheckBoxAddress(
                        textCheckbox: "Home"),
                    SizedBox(width: 16,),
                    CheckBoxAddress(
                        textCheckbox: "Work / Office"),
                    SizedBox(width: 16,),
                    CheckBoxAddress(
                        textCheckbox: "Other"),
                  ],
                ),
              ),
              SizedBox(height: 32,),
              ButtonNormalWidget(
                onClickButton: () {},
                textButton: "Save",
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
