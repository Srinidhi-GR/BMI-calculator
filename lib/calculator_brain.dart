import 'dart:math';
import 'package:bmi/constants.dart';

double bmiCalculator(double weight, double height) {
  return (weight / pow((height / 100), 2));
}

void bmiRange(double bmi) {
  bmi >= 30
      ? {
          range = 'OBESE',
          comment = 'You are obese, Please start exercising and eat health.'
        }
      : bmi <= 29.5 && bmi >= 25
          ? {
              range = 'OVERWEIGHT',
              comment =
                  'Your are overweight, You have to stop eating junk food and start exercising.'
            }
          : bmi <= 24.9 && bmi >= 18.5
              ? {range = 'NORMAL', comment = 'You are normal, Good Job!'}
              : {
                  range = 'UNDERWEIGHT',
                  comment =
                      'You are underweight you need to eat more healthy food and start exercising.'
                };
}

// String bottomComments(){
//   return range == 'OBESE' ? 'You need to sta' : range == "OVERWEIGHT" ? 'You '
// }
