import 'package:film_docs/resources/design_system.dart';
import 'package:flutter/material.dart';

class AllDocDownButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const AllDocDownButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      // Add more styling as needed
      style: ElevatedButton.styleFrom(
       backgroundColor: scenarioColor
      ),
      child: Text(text, style: body1),
    );
  }
}
