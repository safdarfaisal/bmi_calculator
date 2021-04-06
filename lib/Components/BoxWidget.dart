import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constants.dart';

class BoxWidget extends StatelessWidget {
  BoxWidget({@required this.color, this.cardChild, this.onTap});

  final Widget cardChild;
  final Color color;
  final Function onTap;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.all(8.0),
        child: cardChild,
      ),
    );
  }
}
