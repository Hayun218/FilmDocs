import 'package:film_docs/resources/components/content_with_title.dart';
import 'package:flutter/material.dart';

import '../../resources/design_system.dart';

class LightingPersonView extends StatelessWidget {
  const LightingPersonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBlack,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: mainBlack,
        title: const Text('조명부 구성', style: subtitle1),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: lightingColor,
            height: 2.0,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            ContentWithTitle(title: "1 조명감독", bulletPoints: [
              "조명으로 카메라가 담을 현장의 분위기를 만들어주는 역할",
              "조명을 디자인하고, 현장에서 조명을 원하는 분위기에 맞게 설치, 운용",
              "작성 문서 : 장비리스트, 플로어플랜"
            ]),
            ContentWithTitle(title: "2 조명부원", bulletPoints: [
              "장비 관리와 세팅, 조명 컨트롤, 배터리와 전기 공급을 관리하는 역할",
              "조명부원 중 한 명은 카메라 세팅 값 리스트 작성",
              "작성 문서 : 세팅 값 리스트"
            ]),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
