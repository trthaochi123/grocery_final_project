import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
  final lasttNameController = TextEditingController();
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
        textTitle: "Contact Us",
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
                            "Get In Touch",
                            style:
                                TextStyle(fontSize: 22, fontFamily: "SemiBold"),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "One of our workspace experts will reach out to you",
                            style: TextStyle(fontFamily: "Light"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "based on your communicatoin preferences.",
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
                        "Your Detail",
                        style: TextStyle(fontSize: 22, fontFamily: "SemiBold"),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    TextFieldAddress(
                      controller: firstNameController,
                      hintText: "First name",
                      hintStyle: AppStyle.hintTextStyle,
                      horizontal: 20,
                      vertical: 6,
                      contentHorizontal: 20,
                      contentVertical: 10,
                      inputType: TextInputType.emailAddress,
                    ),
                    TextFieldAddress(
                      controller: lasttNameController,
                      hintText: "Last name",
                      hintStyle: AppStyle.hintTextStyle,
                      horizontal: 20,
                      vertical: 6,
                      contentHorizontal: 20,
                      contentVertical: 10,
                      inputType: TextInputType.emailAddress,
                    ),
                    TextFieldAddress(
                      controller: emailController,
                      hintText: "Email",
                      hintStyle: AppStyle.hintTextStyle,
                      horizontal: 20,
                      vertical: 6,
                      contentHorizontal: 20,
                      contentVertical: 10,
                      inputType: TextInputType.emailAddress,
                    ),
                    TextFieldAddress(
                      controller: phoneNumberController,
                      hintText: "Phone number",
                      hintStyle: AppStyle.hintTextStyle,
                      horizontal: 20,
                      vertical: 6,
                      contentHorizontal: 20,
                      contentVertical: 10,
                      inputType: TextInputType.emailAddress,
                    ),
                    TextFieldAddress(
                      controller: infoController,
                      hintText: "Additional Info",
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
                  textButton: "Send Message",
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
                      children: [
                        ContactInfoWidget(
                          icon: "assets/icons/ic_contact_location.svg",
                          textInfo: "2464 Royal Ln. Mesa, New Jersey 45463",
                        ),
                        ContactInfoWidget(
                          icon: "assets/icons/ic_contact_location.svg",
                          textInfo: "2464 Royal Ln. Mesa, New Jersey 45463",
                        ),
                        ContactInfoWidget(
                          icon: "assets/icons/ic_contact_location.svg",
                          textInfo: "2464 Royal Ln. Mesa, New Jersey 45463",
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
