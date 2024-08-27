import 'package:film_docs/resources/components/content_with_title.dart';
import 'package:flutter/material.dart';

import '../../resources/design_system.dart';

class ArtPersonView extends StatelessWidget {
  const ArtPersonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBlack,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: mainBlack,
        title: const Text('미술부 구성', style: subtitle1),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: artColor,
            height: 2.0,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            ContentWithTitle(title: "1 미술감독", bulletPoints: [
              "소품, 의상, 분장으로 카메라가 담을 현장의 분위기를 만들어주는 역할",
              "영화의 전체적인 컨셉을 디자인하고, 소품, 의상, 분장의 레퍼런스를 찾아 연출과 논의",
              "작성 문서 : 소품리스트, 의상리스트, 분장리스트"
            ]),
            ContentWithTitle(title: "2 미술부원", bulletPoints: [
              "미술감독이 찾은 레퍼런스를 바탕으로 의소품과 분장을 찾고 촬영장에서 각자의 파트를 수행하는 역할",
              "세팅시간 안에 소품 배치, 의상 준비, 분장",
              "작성 문서 : 소품리스트, 의상리스트, 분장리스트"
            ]),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
