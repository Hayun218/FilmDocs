import 'package:flutter/material.dart';

import '../design_system.dart';

class StepLineImg extends StatelessWidget {
  final String title;
  final String stepImg;
  final Widget? view;

  const StepLineImg({super.key, required this.title, required this.stepImg, this.view});

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
                  child: Image.asset('assets/icons/stepIcon.png'),
                ),
                const SizedBox(width: 30),
                Text(title, style: subtitle1.copyWith(color: mainBlack)),
                const Spacer(),
                Opacity(
                    opacity: view == null ? 0 : 1,
                    child: const Icon(Icons.arrow_circle_right_outlined))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 58),
            child: Image(image: AssetImage('assets/step_imgs/$stepImg.png')),
          ),
          const SizedBox(height: 28),
          const Divider(
            color: mainBlack,
            height: 0,
          ),
        ],
      ),
    );
  }
}
