import 'package:film_docs/resources/components/custom_bottomBar.dart';
import 'package:film_docs/resources/design_system.dart';
import 'package:film_docs/views/6_art_views/art_page2.dart';
import 'package:film_docs/views/6_art_views/art_page3.dart';
import 'package:flutter/material.dart';
import 'art_page1.dart';

class ArtDocsView extends StatefulWidget {
  const ArtDocsView({super.key});

  @override
  _ArtDocsViewState createState() => _ArtDocsViewState();
}

class _ArtDocsViewState extends State<ArtDocsView> {
  int currentPageIndex = 0;

  List<Widget> artPages = [
    const ArtDocPageOne(),
    const ArtDocPageTwo(),
    const ArtDocPageThree()
  ];

  PageController pageController = PageController();

  void nextPage() {
    if (currentPageIndex < artPages.length - 1) {
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
        title: const Text('미술부 작성 문서 상세 설명', style: subtitle1),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: artColor,
            height: 2.0,
          ),
        ),
      ),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: artPages,
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
                isLast: currentPageIndex == artPages.length - 1,
                color: artColor,
                pageController: pageController),
          ),
        ],
      ),
    );
  }
}
