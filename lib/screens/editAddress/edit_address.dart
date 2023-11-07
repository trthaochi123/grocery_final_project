import 'package:flutter/material.dart';
import '../../base/colors/app_colors.dart';
import '../../base/strings/app_strings.dart';
import '../../data/local/db_helper.dart';
import '../../model/address.dart';
import '../../widgets/address_textfield.dart';
import '../../widgets/green_appbar.dart';
import '../../widgets/log_elevated_button.dart';

class EditAddress extends StatefulWidget {
  final Address editAddress;

  const EditAddress({super.key, required this.editAddress});

  @override
  State<StatefulWidget> createState() => _EditAddress();
}

class _EditAddress extends State<EditAddress> {
  final countryController = TextEditingController();
  final stateController = TextEditingController();
  final cityController = TextEditingController();
  final pincodeController = TextEditingController();

  @override
  void initState() {
    countryController.text = widget.editAddress.country;
    stateController.text = widget.editAddress.state;
    cityController.text = widget.editAddress.city;
    pincodeController.text = widget.editAddress.pincode;
    super.initState();
  }

  late bool checkHome = widget.editAddress.type == 'Home' ? true : false;
  late bool checkOffice = widget.editAddress.type == 'Office' ? true : false;
  late bool checkOther = widget.editAddress.type == 'Other' ? true : false;

  dialogMissing() {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text(
          EditAddressPageString.mustBeFilled,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  bool checkPincode() {
    RegExp regex = RegExp(r"^\d{6}$");
    return regex.hasMatch(pincodeController.text);
  }

  snackBar() {
    return SnackBar(
      content: Text(
        EditAddressPageString.pinCodeRequires,
        style: TextStyle(fontSize: 20),
      ),
      action: SnackBarAction(
        label: 'OK',
        onPressed: () {},
      ),
    );
  }

  dialogCheck() {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Column(
          children: [
            Text(
              EditAddressPageString.wantToEdit,
            ),
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              'Cancel',
            ),
          ),
          TextButton(
            onPressed: () {
              updateAddress(Address(
                id: widget.editAddress.id,
                country: countryController.text,
                state: stateController.text,
                city: cityController.text,
                pincode: pincodeController.text,
                type: checkType(),
                isCheck: widget.editAddress.isCheck,
              ));
              Navigator.of(context).pop();
              dialogComplete();
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  dialogComplete() {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Column(
          children: [
            Text(
              EditAddressPageString.hasBeenSaved,
            ),
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context, true);
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  String checkType() {
    if (checkOffice == true) {
      return 'Office';
    } else {
      if (checkHome == true) {
        return 'Home';
      } else {
        return 'Other';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GreenAppbar(
        title: EditAddressPageString.pageTitle,
        clickBack: () {
          Navigator.pop(context);
        },
      ),
      body: Stack(
        children: [
          Container(
            color: AppColors.greenMainColor,
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 40,
              left: 32,
              right: 32,
              bottom: 20,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(32),
                topLeft: Radius.circular(32),
              ),
              color: Colors.white,
            ),
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      AddressTextField(
                        textFieldName: widget.editAddress.country,
                        controller: countryController,
                      ),
                      const SizedBox(height: 16),
                      AddressTextField(
                        textFieldName: widget.editAddress.state,
                        controller: stateController,
                      ),
                      const SizedBox(height: 16),
                      AddressTextField(
                        textFieldName: widget.editAddress.city,
                        controller: cityController,
                      ),
                      const SizedBox(height: 16),
                      AddressTextField(
                        textFieldName: widget.editAddress.pincode,
                        controller: pincodeController,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Checkbox(
                        value: checkHome,
                        onChanged: (bool? value) {
                          setState(() {
                            checkHome = value!;
                            if (checkHome == true) {
                              checkOffice = false;
                              checkOther = false;
                            }
                          });
                        }),
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Regular",
                      ),
                    ),
                    Checkbox(
                        value: checkOffice,
                        onChanged: (bool? value) {
                          setState(() {
                            checkOffice = value!;
                            if (checkOffice == true) {
                              checkHome = false;
                              checkOther = false;
                            }
                          });
                        }),
                    Text(
                      "Office",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Regular",
                      ),
                    ),
                    Checkbox(
                        value: checkOther,
                        onChanged: (bool? value) {
                          setState(() {
                            checkOther = value!;
                            if (checkOther == true) {
                              checkHome = false;
                              checkOffice = false;
                            }
                          });
                        }),
                    Text(
                      "Other",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Regular",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 80),
                  child: LogElevatedButton(
                      buttonWidth: 200,
                      buttonName: "SAVE",
                      onClick: () {
                        setState(() {
                          if (countryController.text.isEmpty ||
                              stateController.text.isEmpty ||
                              cityController.text.isEmpty ||
                              pincodeController.text.isEmpty ||
                              (checkHome == false &&
                                  checkOther == false &&
                                  checkOffice == false)) {
                            dialogMissing();
                          } else {
                            if (checkPincode() == true) {
                              dialogCheck();
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar());
                            }
                          }
                        });
                      },
                      radius: 4),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
