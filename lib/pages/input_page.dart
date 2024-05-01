import 'package:bmi/calculator_brain.dart';
import 'package:bmi/custom_widget/counter_buttons.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../custom_widget/icon_button.dart';
import '../custom_widget/new_card.dart';

Color maleButtonColor = const Color(0xFF1D1E33);
Color femaleButtonColor = const Color(0xFF1D1E33);

enum Gender {
  male,
  female,
}

enum Parameter {
  addAge,
  subAge,
  addWeight,
  subWeight,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  InputPageState createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  void counter(Parameter attributes) {
    setState(() {
      attributes == Parameter.addWeight
          ? kWeightValue++
          : attributes == Parameter.subWeight
              ? kWeightValue--
              : null;
      attributes == Parameter.addAge
          ? kAgeValue++
          : attributes == Parameter.subAge
              ? kAgeValue--
              : null;
    });
  }

  void detectTap(Gender gender) {
    Gender.male == gender
        ? {
            maleButtonColor = kActiveButtonColor,
            femaleButtonColor = kNewCardColor
          }
        : {
            femaleButtonColor = kActiveButtonColor,
            maleButtonColor = kNewCardColor
          };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      genderTapped = true;
                      setState(() {
                        detectTap(Gender.male);
                      });
                    },
                    child: NewCard(
                      colour: maleButtonColor,
                      cardChild: const MaleFemaleButton(
                          ico: Icons.male, buttonTitle: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      genderTapped = true;
                      setState(() {
                        detectTap(Gender.female);
                      });
                    },
                    child: NewCard(
                      colour: femaleButtonColor,
                      cardChild: const MaleFemaleButton(
                          ico: Icons.female, buttonTitle: 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: NewCard(
              colour: kNewCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: kTextStyle,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        kSliderValue.toString(),
                        style: kHeightText,
                      ),
                      const Text(
                        'cm',
                        style: kTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: kSliderValue.toDouble(),
                    onChanged: (value) {
                      setState(() {
                        kSliderValue = value.toInt();
                      });
                    },
                    min: 120,
                    max: 220,
                    activeColor: kBottomCalculateButtonColor,
                    inactiveColor: Colors.grey,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: NewCard(
                    colour: kNewCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: kTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              kWeightValue.toString(),
                              style: kHeightText,
                            ),
                            const Text(
                              'kg',
                              style: kTextStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Counter(
                              func1: () => counter(Parameter.subWeight),
                              func2: () => counter(Parameter.addWeight),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: NewCard(
                    colour: kNewCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: kTextStyle,
                        ),
                        Text(
                          kAgeValue.toString(),
                          style: kHeightText,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Counter(
                              func1: () => counter(Parameter.subAge),
                              func2: () => counter(Parameter.addAge),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                genderTapped == true
                    ? {
                        Navigator.pushNamed(context, '/results'),
                        kBmi = bmiCalculator(
                            kWeightValue.toDouble(), kSliderValue.toDouble()),
                        bmiRange(kBmi),
                      }
                    : showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Alert'),
                            content: const Text('Please select any gender'),
                            actions: [
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
              },
              child: Container(
                color: kBottomCalculateButtonColor,
                child: const Center(
                  child: Text(
                    "CALCULATE",
                    style: kBottomButtonTextStyle,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
