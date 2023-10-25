import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sg_grocery_project/widgets/checkbox_address.dart';
import 'package:sg_grocery_project/widgets/textfield_address.dart';

import '../../base/colors/app_colors.dart';
import '../../base/styles/app_styles.dart';
import '../../widgets/button_normal.dart';
import '../../widgets/custom_appbar.dart';

class NewAddress extends StatefulWidget {
  const NewAddress({super.key});

  @override
  State<NewAddress> createState() => _NewAddressState();
}

class _NewAddressState extends State<NewAddress> {
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
        textTitle: "Add New Address",
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
                hintText: "Country",
                hintStyle: AppStyle.hintTextStyle,
              ),
              SizedBox(height: 4,),
              TextFieldAddress(
                controller: countryController,
                hintText: "State",
                hintStyle: AppStyle.hintTextStyle,
              ),
              SizedBox(height: 4,),
              TextFieldAddress(
                controller: countryController,
                hintText: "City",
                hintStyle: AppStyle.hintTextStyle,
              ),
              SizedBox(height: 4,),
              TextFieldAddress(
                controller: countryController,
                hintText: "Pincode",
                hintStyle: AppStyle.hintTextStyle,
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
