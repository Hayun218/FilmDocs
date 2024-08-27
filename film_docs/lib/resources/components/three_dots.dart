import 'package:film_docs/resources/design_system.dart';
import 'package:flutter/material.dart';


class ThreeDotsOnLine extends StatelessWidget {
  final Color dotColor;
  final Function(String) scrollToText;

  const ThreeDotsOnLine({super.key, required this.dotColor, required this.scrollToText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 5,
            child: Container(
              height: 2,
              width: MediaQuery.of(context).size.width / 2,
              color: Colors.white, // White line
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  scrollToText('Pre-production');
                },
                child: DotWithText(dotColor: dotColor, text: 'Pre-production'),
              ),
              GestureDetector(
                onTap: () {
                  scrollToText('Production');
                },
                child: DotWithText(dotColor: dotColor, text: 'Production'),
              ),
              GestureDetector(
                onTap: () {
                  scrollToText('Post-production');
                },
                child: DotWithText(dotColor: dotColor, text: 'Post-production'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DotWithText extends StatelessWidget {
  final Color dotColor;
  final String text;

  const DotWithText({super.key, required this.dotColor, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: dotColor,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(height: 13),
        Text(
          text,
          style: caption.copyWith(
              color: dotColor,
              decoration: TextDecoration.underline,
              decorationColor: dotColor),
        ),
      ],
    );
  }
}
