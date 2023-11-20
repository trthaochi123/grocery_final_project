import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sg_grocery_project/widgets/add_address_widget.dart';

import '../../base/colors/app_colors.dart';
import '../../base/strings/app_strings.dart';
import '../../data/local/db_helper.dart';
import '../../model/address.dart';
import '../../widgets/address_textfield.dart';
import '../../widgets/green_appbar.dart';
import '../../widgets/log_elevated_button.dart';

class AddNewAddress extends StatefulWidget {
  const AddNewAddress({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _AddNewAddress();
}

class _AddNewAddress extends State<AddNewAddress> {
  bool checkHome = false;
  bool checkOffice = false;
  bool checkOther = false;
  TextEditingController countryController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();
  late final newAddress = Address(
      id: null,
      country: countryController.text,
      state: stateController.text,
      city: cityController.text,
      pincode: pincodeController.text,
      type: checkType());

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

  dialogMising() {
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

  dialogCheck() {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Column(
          children: [
            Text(
              EditAddressPageString.wantToSave,
            ),
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('CANCEL'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                Navigator.of(context).pop();
                dialogComplete();
                insertAddress(newAddress);
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
        style: TextStyle(fontSize: 16),
      ),
      action: SnackBarAction(
        label: 'OK',
        onPressed: () {},
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GreenAppbar(
        title: EditAddressPageString.pageTitle1,
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
            child: AddAddressWidget()
          )
        ],
      ),
    );
  }
}
