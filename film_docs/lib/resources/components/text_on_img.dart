import 'package:film_docs/resources/design_system.dart';
import 'package:flutter/material.dart';

class TextOnImg extends StatelessWidget  {
  final double screenH;
  final String title;
  final String subTitle;
  final Color lineColor;
  final String imgName;

  const TextOnImg({super.key, required this.screenH, required this.title, required this.subTitle, required this.lineColor, required this.imgName});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: screenH * 0.3,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/$imgName.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: screenH * 0.3 * 0.02,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(title, style: headline1),
                Text(subTitle, style: subtitle1),
              ],
            ),
          ),
        ),
         Align(
          alignment: Alignment.bottomCenter,
          child:  Divider(
            color: lineColor,
            height: 2,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
