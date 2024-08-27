import 'package:film_docs/resources/design_system.dart';
import 'package:flutter/material.dart';

class ContentWithTitle extends StatelessWidget {
  final String title;
  final List<String> bulletPoints;

  const ContentWithTitle({super.key, required this.title, required this.bulletPoints});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: subtitle1),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: bulletPoints
                .map((point) => buildBulletPoint(point))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget buildBulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('\u2022 ', style: body2), // Bullet point
        Expanded(
          child: Text(
            text,
            style: body2,
            softWrap: true, // Enable line wrapping
          ),
        ),
      ],
    );
  }
}

