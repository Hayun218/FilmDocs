import 'package:film_docs/resources/components/custom_bottomBar.dart';
import 'package:film_docs/resources/design_system.dart';
import 'package:film_docs/views/3_production_views/production_page1.dart';
import 'package:film_docs/views/3_production_views/production_page2.dart';
import 'package:film_docs/views/3_production_views/production_page3.dart';
import 'package:film_docs/views/3_production_views/production_page4.dart';
import 'package:flutter/material.dart';


class ProductionDocsView extends StatefulWidget {
  const ProductionDocsView({super.key});

  @override
  _ProductionDocsViewState createState() => _ProductionDocsViewState();
}

class _ProductionDocsViewState extends State<ProductionDocsView> {
  int currentPageIndex = 0;

  List<Widget> productionPages = [
    const ProductionDocPageOne(),
    const ProductionDocPageTwo(),
    const ProductionDocPageThree(),
    const ProductionDocPageFour()
  ];

  PageController pageController = PageController();

  void nextPage() {
    if (currentPageIndex < productionPages.length - 1) {
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
        title: const Text('제작부 작성 문서 상세 설명', style: subtitle1),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: productionColor,
            height: 2.0,
          ),
        ),
      ),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            children: productionPages,
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
                isLast: currentPageIndex == productionPages.length - 1,
                color: scenarioColor, pageController: pageController),
          ),

        ],
      ),
    );
  }
}
