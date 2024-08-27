import 'package:film_docs/resources/components/custom_bottomBar.dart';
import 'package:film_docs/resources/design_system.dart';
import 'package:flutter/material.dart';

import 'sound_page1.dart';

class SoundDocsView extends StatefulWidget {
  const SoundDocsView({super.key});

  @override
  _SoundDocsViewState createState() => _SoundDocsViewState();
}

class _SoundDocsViewState extends State<SoundDocsView> {
  int currentPageIndex = 0;

  List<Widget> soundPages = [
    const SoundDocPageOne(),
  ];

  PageController pageController = PageController();

  void nextPage() {
    if (currentPageIndex < soundPages.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void previousPage() {
    if (currentPageIndex > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBlack,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: mainBlack,
        title: const Text('음향부 작성 문서 상세 설명', style: subtitle1),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: soundColor,
            height: 2.0,
          ),
        ),
      ),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: soundPages,
            onPageChanged: (index) {
              setState(() {
                currentPageIndex = index;
              });
            },
          ),
          Positioned(
            bottom: 50,
            right: 24,
            left: 24,
            child: CustomBottomBar(
                isFirst: currentPageIndex == 0,
                isLast: currentPageIndex == soundPages.length - 1,
                color: soundColor,
                pageController: pageController),
          ),
        ],
      ),
    );
  }
}
