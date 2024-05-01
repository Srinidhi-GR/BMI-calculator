import 'package:flutter/material.dart';
import '../constants.dart';
import '../pages/input_page.dart';

class MaleFemaleButton extends StatelessWidget {
  const MaleFemaleButton(
      {required this.ico, required this.buttonTitle, super.key});

  final IconData ico;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          ico,
          size: 75,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(buttonTitle, style: kTextStyle),
      ],
    );
  }
}
