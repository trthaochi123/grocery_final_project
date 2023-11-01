import 'package:flutter/material.dart';

import '../base/colors/app_colors.dart';

class ExpansiveWidget extends StatefulWidget {
  final String title;
  final String content;
  final Color backgroundColor;

  const ExpansiveWidget({
    super.key,
    required this.title,
    required this.content,
    required this.backgroundColor,
  });

  @override
  State<StatefulWidget> createState() => _ExpansiveWidget();
}

class _ExpansiveWidget extends State<ExpansiveWidget> {
  bool _isExpanded = false;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 22),
      child: Container(
        decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(8)),
        child: Theme(
          data: ThemeData(dividerColor: Colors.transparent),
          child: ExpansionTile(
            onExpansionChanged: (bool expanded) {
              setState(() {
                _isExpanded = expanded;
              });
            },
            initiallyExpanded: false,
            title: Text(
              widget.title,
              style: TextStyle(
                fontSize: 16,
                fontFamily: "ExtraLight",
                  color: _isExpanded ? Colors.black : Colors.black
              ),
            ),
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: ListTile(
                    title: Text(widget.content,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Light",
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
