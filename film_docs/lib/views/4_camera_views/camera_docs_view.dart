import 'package:film_docs/resources/components/custom_bottomBar.dart';
import 'package:film_docs/resources/design_system.dart';
import 'package:film_docs/views/4_camera_views/camera_page1.dart';
import 'package:film_docs/views/4_camera_views/camera_page2.dart';
import 'package:film_docs/views/4_camera_views/camera_page3.dart';
import 'package:film_docs/views/4_camera_views/camera_page4.dart';
import 'package:flutter/material.dart';

class CameraDocsView extends StatefulWidget {
  const CameraDocsView({super.key});

  @override
  _CameraDocsViewState createState() => _CameraDocsViewState();
}

class _CameraDocsViewState extends State<CameraDocsView> {
  int currentPageIndex = 0;

  List<Widget> cameraPages = [
    const CameraDocPageOne(),
    const CameraDocPageTwo(),
    const CameraDocPageThree(),
    const CameraDocPageFour()
  ];

  PageController pageController = PageController();

  void nextPage() {
    if (currentPageIndex < cameraPages.length - 1) {
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
        title: const Text('촬영부 작성 문서 상세 설명', style: subtitle1),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: cameraColor,
            height: 2.0,
          ),
        ),
      ),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: cameraPages,
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
                isLast: currentPageIndex == cameraPages.length - 1,
                color: scenarioColor,
                pageController: pageController),
          ),
        ],
      ),
    );
  }
}
