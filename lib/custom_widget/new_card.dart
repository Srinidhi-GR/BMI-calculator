import 'package:flutter/material.dart';

class NewCard extends StatelessWidget {
  const NewCard({required this.colour, required this.cardChild, super.key});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}
