import 'package:flutter/material.dart';
import '../../resources/components/doc_view.dart';
import '../../resources/data/textData.dart';

class ScenarioDocFourView extends StatelessWidget {
  const ScenarioDocFourView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
        children: [
          DocumentView(
              index: "4 / 4",
              title: '시나리오',
              subTitle: '이야기를 영상화하기 위한 설계도',
              content: scenarioDocFourText
          ),
        ],

    );
  }
}
