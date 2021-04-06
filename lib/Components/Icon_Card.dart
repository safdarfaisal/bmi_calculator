import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({this.icon, this.text});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 80.0, color: Colors.white),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
