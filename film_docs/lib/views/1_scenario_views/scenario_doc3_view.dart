import 'package:flutter/material.dart';
import '../../resources/components/doc_view.dart';
import '../../resources/data/textData.dart';

class ScenarioDocThreeView extends StatelessWidget {
  const ScenarioDocThreeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
        children: [
          DocumentView(
              index: "3 / 4",
              title: '트리트먼트',
              subTitle: '시나리오를 만들기 위한 설계도',
              content: scenarioDocThreeText,
          ),
        ],

    );
  }
}
