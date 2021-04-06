import 'package:bmi_calculator/Screen/results_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Screen/InputPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0F1438),
        canvasColor: Color(0xFF101538),
        accentColor: Colors.pinkAccent,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      home: InputPage(),
    );
  }
}
