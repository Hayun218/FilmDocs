import 'package:film_docs/resources/components/custom_bottomBar.dart';
import 'package:film_docs/resources/design_system.dart';
import 'package:film_docs/views/1_scenario_views/scenario_doc1_view.dart';
import 'package:film_docs/views/1_scenario_views/scenario_doc2_view.dart';
import 'package:film_docs/views/1_scenario_views/scenario_doc3_view.dart';
import 'package:film_docs/views/1_scenario_views/scenario_doc4_view.dart';
import 'package:flutter/material.dart';

class ScenarioDocsView extends StatefulWidget {
  const ScenarioDocsView({super.key});

  @override
  _ScenarioDocsViewState createState() => _ScenarioDocsViewState();
}

class _ScenarioDocsViewState extends State<ScenarioDocsView> {
  int currentPageIndex = 0;

  List<Widget> scenarioPages = [
    const ScenarioDocOneView(),
    const ScenarioDocTwoView(),
    const ScenarioDocThreeView(),
    const ScenarioDocFourView()
  ];

  PageController pageController = PageController();

  void nextPage() {
    if (currentPageIndex < scenarioPages.length - 1) {
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
          title: const Text('각본 작성 문서 상세 설명', style: subtitle1),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: Container(
              color: scenarioColor,
              height: 2.0,
            ),
          ),
        ),
        body: Stack(
          children: [
            PageView(
              controller: pageController,
              children: scenarioPages,
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
                    isLast: currentPageIndex == scenarioPages.length - 1,
                    color: scenarioColor, pageController: pageController),
            ),

          ],
        ),
    );
  }
}
