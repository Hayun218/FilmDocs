import 'package:film_docs/resources/design_system.dart';
import 'package:flutter/material.dart';

class DocumentView extends StatelessWidget {
  final String index;
  final String title;
  final String subTitle;
  final String content;

  const DocumentView(
      {super.key, required this.index,
      required this.title,
      required this.subTitle,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 34),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(index, style: caption),
          const SizedBox(height: 5),
          Text(title, style: headline2),
          const SizedBox(height: 40),
          Text(subTitle, style: subtitle1),
          const SizedBox(height: 15),
          Text(content, style: body1)
        ],
      ),
    );
  }
}

