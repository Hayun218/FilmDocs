import 'package:film_docs/resources/components/content_with_title.dart';
import 'package:flutter/material.dart';

import '../../resources/design_system.dart';

class SoundPersonView extends StatelessWidget {
  const SoundPersonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBlack,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: mainBlack,
        title: const Text('음향부 구성', style: subtitle1),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: soundColor,
            height: 2.0,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            ContentWithTitle(title: "1 음향감독", bulletPoints: [
              "음향과 관련된 것을 총괄하는 역할",
              "현장에서 수음되는 소리를 들으며 노이즈가 생기지 않는지, 대사와 겹친 소음은 없는지 확인",
              "작성 문서 : 장비리스트"
            ]),
            ContentWithTitle(title: "2 붐 오퍼레이터", bulletPoints: [
              "붐 마이크를 들고 수음을 하는 역할",
              "인물의 대사와 기타 소리들이 잘 수음이 될 수 있도록 수음 각도를 조절"
            ]),
            ContentWithTitle(title: "3 붐 어시스턴트", bulletPoints: [
              "케이블을 정리하고 배터리를 관리하는 역할",
              "붐 마이크와 레코더가 연결된 케이블이 엉키지 않도록 관리하고 장비들의 배터리를 관리하는 역할"
            ]),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
