import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sg_grocery_project/base/strings/app_strings.dart';
import 'package:sg_grocery_project/widgets/button_normal.dart';
import 'package:sg_grocery_project/widgets/contact_info_widget.dart';
import 'package:sg_grocery_project/widgets/textfield_address.dart';

import '../../base/colors/app_colors.dart';
import '../../base/styles/app_styles.dart';
import '../../widgets/custom_appbar.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<StatefulWidget> createState() => _ContactUsPage();
}

class _ContactUsPage extends State<ContactUsPage> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final infoController = TextEditingController();

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
        textTitle: ContactUsPageString.contactUs,
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
          child: Padding(
            padding: EdgeInsets.only(
              top: 20,
            ),
            child: Column(
              children: [
                Container(
                  width: 396,
                  height: 146,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Text(
                            ContactUsPageString.getInTouch,
                            style:
                                TextStyle(fontSize: 22, fontFamily: "SemiBold"),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            ContactUsPageString.slogan1,
                            style: TextStyle(fontFamily: "Light"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            ContactUsPageString.slogan2,
                            style: TextStyle(fontFamily: "Light"),
                          )
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      Text(
                        ContactUsPageString.yourDetail,
                        style: TextStyle(fontSize: 22, fontFamily: "SemiBold"),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    TextFieldAddress(
                      controller: firstNameController,
                      hintText: ContactUsPageString.firstName,
                      hintStyle: AppStyle.hintTextStyle,
                      horizontal: 20,
                      vertical: 6,
                      contentHorizontal: 20,
                      contentVertical: 10,
                      inputType: TextInputType.emailAddress,
                    ),
                    TextFieldAddress(
                      controller: lastNameController,
                      hintText: ContactUsPageString.lastName,
                      hintStyle: AppStyle.hintTextStyle,
                      horizontal: 20,
                      vertical: 6,
                      contentHorizontal: 20,
                      contentVertical: 10,
                      inputType: TextInputType.emailAddress,
                    ),
                    TextFieldAddress(
                      controller: emailController,
                      hintText: ContactUsPageString.email,
                      hintStyle: AppStyle.hintTextStyle,
                      horizontal: 20,
                      vertical: 6,
                      contentHorizontal: 20,
                      contentVertical: 10,
                      inputType: TextInputType.emailAddress,
                    ),
                    TextFieldAddress(
                      controller: phoneNumberController,
                      hintText: ContactUsPageString.phoneNumber,
                      hintStyle: AppStyle.hintTextStyle,
                      horizontal: 20,
                      vertical: 6,
                      contentHorizontal: 20,
                      contentVertical: 10,
                      inputType: TextInputType.emailAddress,
                    ),
                    TextFieldAddress(
                      controller: infoController,
                      hintText: ContactUsPageString.additionalInfo,
                      hintStyle: AppStyle.hintTextStyle,
                      horizontal: 20,
                      vertical: 6,
                      contentHorizontal: 20,
                      contentVertical: 40,
                      inputType: TextInputType.emailAddress,
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                ButtonNormalWidget(
                  onClickButton: () {},
                  textButton: ContactUsPageString.sendMessage,
                  heightButton: 50,
                  widthButton: 164,
                  textStyle: AppStyle.textButtonNameWidget,
                  backgroundColorButton: AppColors.greenMainColor,
                ),
                SizedBox(
                  height: 28,
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        ContactInfoWidget(
                          icon: "assets/icons/ic_contact_location.svg",
                          textInfo: ContactUsPageString.textInfo,
                        ),
                        ContactInfoWidget(
                          icon: "assets/icons/ic_contact_location.svg",
                          textInfo: ContactUsPageString.textInfo,
                        ),
                        ContactInfoWidget(
                          icon: "assets/icons/ic_contact_location.svg",
                          textInfo: ContactUsPageString.textInfo,
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
