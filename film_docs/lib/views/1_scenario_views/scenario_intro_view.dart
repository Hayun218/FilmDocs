import 'package:film_docs/resources/design_system.dart';
import 'package:film_docs/resources/data/textData.dart';
import 'package:flutter/material.dart';
import '../../resources/components/text_on_img.dart';

class ScenarioIntroView extends StatelessWidget {
  const ScenarioIntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBlack,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: mainBlack,
        title: const Text('각본 파트 소개', style: subtitle1),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextOnImg(screenH: MediaQuery.of(context).size.height, title: '각본', subTitle: 'Scenario', lineColor: scenarioColor, imgName: 'scenarioImg'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              color: Colors.white,
                              width: 1.0
                          ),
                        ),
                      ),
                      child: const Text("설계도를 만드는 것", style: subtitle1),
                    ),
                    const Spacer()
                  ],
                ),

                const SizedBox(height: 20),

                const Text(scenarioIntroText,
                style: body1),
              ],
            ),
          )
        ],
      ),
    );
  }
}