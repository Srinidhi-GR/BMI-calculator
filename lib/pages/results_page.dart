import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('             RESULTS'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
        child: Container(
          decoration: BoxDecoration(
            color: kNewCardColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    range,
                    style: kResultTextStyle1,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    kBmi.toStringAsFixed(1),
                    style: kBmiNum,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    comment,
                    style: kTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
