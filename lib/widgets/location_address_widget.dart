import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LocationAddressWidget extends StatefulWidget {
  final String type;
  final String iconType;

  const LocationAddressWidget({
    super.key,
    required this.type,
    required this.iconType,
  });

  @override
  State<StatefulWidget> createState() => _LocationAddressWidget();
}

class _LocationAddressWidget extends State<LocationAddressWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SvgPicture.asset(widget.iconType),
          SizedBox(
            width: 6,
          ),
          Text(
            widget.type,
            style: TextStyle(
                fontSize: 20, fontFamily: "SemiBold"),
          ),
        ],
      ),
    );
  }
}
