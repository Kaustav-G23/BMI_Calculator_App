import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({this.height,this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi > 30){
      return 'OBESE';
    }else
    if(_bmi >= 25){
        return 'OVERWEIGHT';
      }else if(_bmi >= 18.5)
        {
          return 'NORMAL';
        }else{
        return 'UNDERWEIGHT';
      }
  }

  String getInterpretation(){
    if(_bmi > 30){
      return 'This is Serious Condition and you should plan to start a healthy life. Three things Diet, Exercise and Determination. BEST OF LUCK!!';
    }else
    if(_bmi >= 25){
      return 'You have a higher than normal body weight. Try to exercise more and have a good diet. BEST OF LUCK!!';
    }else if(_bmi >= 18.5)
    {
      return 'You have a normal body weight. GOOD JOB!!';
    }else{
      return 'You have lower than normal body weight. You can eat a bit more and be healthy.';
    }
  }
}