import 'package:film_docs/resources/components/custom_bottomBar.dart';
import 'package:film_docs/resources/design_system.dart';
import 'package:flutter/material.dart';

import 'director_page1.dart';
import 'director_page2.dart';
import 'director_page3.dart';
import 'director_page4.dart';
import 'director_page5.dart';

class DirectorDocsView extends StatefulWidget {
  const DirectorDocsView({super.key});

  @override
  _DirectorDocsViewState createState() => _DirectorDocsViewState();
}

class _DirectorDocsViewState extends State<DirectorDocsView> {
  int currentPageIndex = 0;

  List<Widget> directorPages = [
    const DirectorDocPageOne(),
    const DirectorDocPageTwo(),
    const DirectorDocPageThree(),
    const DirectorDocPageFour(),
    const DirectorDocPageFive()
  ];

  PageController pageController = PageController();

  void nextPage() {
    if (currentPageIndex < directorPages.length - 1) {
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
        title: const Text('연출부 작성 문서 상세 설명', style: subtitle1),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: directorColor,
            height: 2.0,
          ),
        ),
      ),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: directorPages,
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
            child:  CustomBottomBar(isFirst: currentPageIndex == 0,
                isLast: currentPageIndex == directorPages.length - 1,
                color: scenarioColor, pageController: pageController),
          ),

        ],
      ),
    );
  }
}
