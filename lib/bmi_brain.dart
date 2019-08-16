import 'dart:math';

class BMICalculator {
  final int height;
  final int weight;
  double _bmi;

  BMICalculator({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    String result = "Underweight";

    if (_bmi >= 25)
      result = 'Overweight';
    else if (_bmi >= 18) result = 'Normal';

    return result;
  }

  String getSuggestion() {
    String result =
        "You have a lower than normal body weight. More calories needed";

    if (_bmi >= 25)
      result =
          'You have a higher than normal body weight. More exercise needed';
    else if (_bmi >= 18) result = 'You have a normal body weight. Good Job!';

    return result;
  }
}
