import 'dart:math';

class BMICalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  BMICalculatorBrain({this.height, this.weight});

  /// Calculates the [_bmi], based on the [weight] and [height]
  /// that is passed.
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  /// Returns a short summary of the result of the [_bmi].
  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  /// Returns a detailed summary of the result of the [_bmi].
  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
