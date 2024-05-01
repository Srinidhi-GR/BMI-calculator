import 'package:flutter/material.dart';

import '../constants.dart';

class Counter extends StatelessWidget {
  const Counter({required this.func1, required this.func2, super.key});

  final VoidCallback func1;
  final VoidCallback func2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: func1,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: kBottomCalculateButtonColor,
          ),
          child: const Icon(
            Icons.remove,
            size: 30,
          ),
        ),
        ElevatedButton(
          onPressed: func2,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: kBottomCalculateButtonColor,
          ),
          child: const Icon(
            Icons.add,
            size: 30,
          ),
        ),
      ],
    );
  }
}
