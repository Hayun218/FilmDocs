import 'package:film_docs/resources/design_system.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final Color color;
  final PageController pageController;
  final Uri? documentUrl;

  const CustomBottomBar({super.key, 
    required this.isFirst,
    required this.isLast,
    this.documentUrl,
    required this.color,
    required this.pageController,
  });

  Future<void> _launchURL() async {
    if (await canLaunchUrl(documentUrl!)) {
      await launchUrl(documentUrl!);
    } else {
      throw 'Could not launch $documentUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(
                Colors.transparent), // Set overlay color to transparent
          ),
          onPressed: () => isFirst
              ? null
              : pageController.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                ),
          child: Opacity(
            opacity: isFirst ? 0 : 1,
            child: Row(
              children: [
                const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                ),
                Text(
                  '이전 글',
                  style: caption.copyWith(shadows: [
                    Shadow(
                      color: Colors.white.withOpacity(0.4),
                      blurRadius: 10,
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
        TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(
                Colors.transparent), // Set overlay color to transparent
          ),
          onPressed: () => {
            isLast
                ? null
                : pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  ),
          },
          child: Opacity(
            opacity: isLast ? 0 : 1,
            child: Row(
              children: [
                Text('다음 글',  style: caption.copyWith(shadows: [
              Shadow(
                color: Colors.white.withOpacity(0.4),
                blurRadius: 10,
              ),
            ]),),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.white,

                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
