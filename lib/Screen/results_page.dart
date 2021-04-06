import 'package:bmi_calculator/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Components/BoxWidget.dart';
import 'package:bmi_calculator/Components/bottom_text_button.dart';

class ResultsPage extends StatefulWidget {
  final String bMI;
  final String interpretation;
  final String data;

  ResultsPage({this.bMI,this.data,this.interpretation});

  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Center(
                  child: Container(
                    child: Text(
                      'Your Result',
                      style: kTitleTextStyle,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: BoxWidget(
                  color: kInactiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        widget.interpretation,
                        style: kResultTextStyle,
                      ),
                      Text(widget.bMI,style: kBMITextStyle),
                      Text(widget.data,style: kInterpretationStyle,),
                    ],
                  ),
                ),
              ),
              BottomTextButton(
                title: 'Recalculate',
                onTap: (){
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
