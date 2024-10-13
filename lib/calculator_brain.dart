import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({
    required this.height,
    required this.weight,
  });
  final int height;
  final int weight;

  double _bmi = 0;

  int calculateBMI2() {
    double bmi = weight.toDouble() / pow(height / 100, 2);
    return bmi.toInt();
  }

  String calculateBMI() {
    _bmi = weight.toDouble() / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (calculateBMI2() >= 25) {
      return 'Overweight';
    } else if (calculateBMI2() > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have higher than a normal body weight.Try to exercise more';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight,  Good Job!';
    } else {
      return 'You have lower than a normal body weight, you should eat more';
    }
  }
}
