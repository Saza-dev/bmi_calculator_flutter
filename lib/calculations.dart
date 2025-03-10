import 'dart:math';

class Calculations {

  Calculations({required this.height, required this.weight});

  final int height;
  final int weight;

  double _bmi = 0.0;

  String calculatedBMI (){
    _bmi = weight/ pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults(){
    if (_bmi>= 25){
      return 'OverWeight';
    }else if (_bmi>18.5){
      return 'Normal';
    }else {
      return 'Underweight';
    }
  }

  String getInterpretation(){

    if(_bmi>=25){
      return 'You have a higher than normal body weight. Try to exercise more.';
    }else if(_bmi >=18.5){
      return 'You have a normal body weight. Good Job!';
    }else {
      return 'You have a lower than normal body weight. You can eat a bit more';
    }

  }


}