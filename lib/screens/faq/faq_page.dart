import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sg_grocery_project/widgets/button_normal.dart';
import 'package:sg_grocery_project/widgets/expansive_widget.dart';

import '../../base/colors/app_colors.dart';
import '../../base/strings/app_strings.dart';
import '../../base/styles/app_styles.dart';
import '../../widgets/custom_appbar.dart';

class FaqPage extends StatefulWidget {
  const FaqPage({super.key});

  @override
  State<StatefulWidget> createState() => _FaqPage();
}

class _FaqPage extends State<FaqPage> {
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
        textTitle: "FAQ",
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
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              children: [
                ExpansiveWidget(
                    title: FaqPageString.select,
                    content: FaqPageString.selectContent,
                    backgroundColor: Colors.grey.shade300),
                const ExpansiveWidget(
                    title: FaqPageString.where,
                    content: FaqPageString.whereContent,
                    backgroundColor: AppColors.greenFaq),
                const ExpansiveWidget(
                    title: FaqPageString.how,
                    content: FaqPageString.selectContent,
                    backgroundColor: AppColors.greenFaq),
                const ExpansiveWidget(
                    title: FaqPageString.howDoIKnow,
                    content: FaqPageString.selectContent,
                    backgroundColor: AppColors.greenFaq),
                const ExpansiveWidget(
                    title: FaqPageString.whatIs,
                    content: FaqPageString.selectContent,
                    backgroundColor: AppColors.greenFaq),
                const ExpansiveWidget(
                    title: FaqPageString.whatIf,
                    content: FaqPageString.selectContent,
                    backgroundColor: AppColors.greenFaq),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Text(
                      FaqPageString.notListed,
                      style: TextStyle(fontSize: 21, fontFamily: "SemiBold"),
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),

                Container(
                  width: 396,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      FaqPageString.write,
                      style: TextStyle(fontFamily: "ExtraLight", fontSize: 14),
                    ),
                  ),
                ),

                SizedBox(
                  height: 28,
                ),

                ButtonNormalWidget(
                    onClickButton: () {},
                    textButton: "Submit",
                    heightButton: 50,
                    widthButton: 208,
                    textStyle: AppStyle.textButtonNameWidget,
                    backgroundColorButton: AppColors.greenMainColor)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
