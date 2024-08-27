import 'package:film_docs/resources/components/custom_bottomBar.dart';
import 'package:film_docs/resources/design_system.dart';
import 'package:flutter/material.dart';

import 'lighting_page1.dart';
import 'lighting_page2.dart';
import 'lighting_page3.dart';

class LightingDocsView extends StatefulWidget {
  const LightingDocsView({super.key});

  @override
  _LightingDocsViewState createState() => _LightingDocsViewState();
}

class _LightingDocsViewState extends State<LightingDocsView> {
  int currentPageIndex = 0;

  List<Widget> lightingPages = [
    const LightingDocPageOne(),
    const LightingDocPageTwo(),
    const LightingDocPageThree()
  ];

  PageController pageController = PageController();

  void nextPage() {
    if (currentPageIndex < lightingPages.length - 1) {
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
        title: const Text('조명부 작성 문서 상세 설명', style: subtitle1),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: lightingColor,
            height: 2.0,
          ),
        ),
      ),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: lightingPages,
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
                isLast: currentPageIndex == lightingPages.length - 1,
                color: lightingColor,
                pageController: pageController),
          ),
        ],
      ),
    );
  }
}
