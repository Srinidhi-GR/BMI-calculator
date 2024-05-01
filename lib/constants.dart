import 'package:flutter/material.dart';

const kNewCardColor = Color(0xFF1D1E33);
const kBottomCalculateButtonColor = Color(0xFFEB1555);
const kButtonFontColor = Color(0xFF8D8E98);
const kActiveButtonColor = Color(0xFF0A0E31);

int kSliderValue = 120;
int kWeightValue = 60;
int kAgeValue = 18;
double kBmi = 0;
String range = '';
String comment = '';
bool genderTapped = false;

const TextStyle kTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 15,
  color: kButtonFontColor,
);

const TextStyle kHeightText = TextStyle(
  color: Colors.white,
  fontSize: 30,
  fontWeight: FontWeight.bold,
);

const TextStyle kBottomButtonTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 17,
);

const TextStyle kResultTextStyle1 = TextStyle(
  color: Colors.green,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

const TextStyle kBmiNum = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 100,
);
