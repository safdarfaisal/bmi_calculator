
import 'dart:math';

class CalculatorBrain{
  double height;
  double weight;
  double _bmi;
  CalculatorBrain({this.height,this.weight});

  String returnBMI(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String returnInterpret(){
    if(_bmi > 25){
      return 'OVERWEIGHT';
    }
    else if(_bmi > 18.5){
      return 'NORMAL';
    }
    else{
      return 'UNDERWEIGHT';
    }
  }
  String returnData(){
    if(_bmi > 25){
      return 'Eat less. Run more';
    }
    else if(_bmi > 18.5){
      return 'Live life the way you do.';
    }
    else{
      return 'Eat more. Food is life';
    }
  }

}