import 'package:flutter/material.dart';

import '../design_system.dart';

class InnerNavigationTitle extends StatelessWidget {
  final String title;
  final String iconName;
  final Widget? view;
  final bool isLine;

  const InnerNavigationTitle(
      {super.key, required this.title,
      this.view,
      required this.iconName,
      required this.isLine});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (view != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => view!),
            );
          }
        },
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 38),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 28,
                    height: 28,
                    child: Image.asset('assets/icons/$iconName.png'),
                  ),
                  const SizedBox(width: 30),
                  Text(title, style: subtitle1.copyWith(color: mainBlack)),
                  const Spacer(),
                  const Icon(Icons.arrow_circle_right_outlined)
                ],
              ),
            ),
            Divider(
              color: mainBlack.withOpacity(isLine ? 1 : 0),
              height: 0,
            ),
          ],
        ));
  }
}
