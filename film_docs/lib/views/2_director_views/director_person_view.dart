import 'package:film_docs/resources/components/content_with_title.dart';
import 'package:flutter/material.dart';

import '../../resources/design_system.dart';

class DirectorPersonView extends StatelessWidget {
  const DirectorPersonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBlack,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: mainBlack,
        title: const Text('연출부 구성', style: subtitle1),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: directorColor,
            height: 2.0,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            ContentWithTitle(title: "1 연출", bulletPoints: [
              "시나리오를 작성하거나 작성된 시나리오를 영상으로  연출하는 역할 / 연출부의 감독이면서 영화 전체의 감독",
                  "작성 문서 : 시나리오, 씬 리스트, 샷 리스트,  스크립트 브레이크다운, 스토리보드 등"
            ]),
            ContentWithTitle(title: "2 조연출", bulletPoints: [
              "정해진 일만 하는 것이 아니라 다양한 부분에 신경을 쓰고,  체크하고, 해결하는 역할",
                  "연출의 오른팔, 실질적인 연출부의 관리자",
                  "타임키핑, 촬영 일정 수정 및 조율, 다음 촬영 장면의 내용을  배우에게 설명하는 것 등의 역할",
                  "작성 문서 : 일촬표 등"
            ]),
            ContentWithTitle(title: "3 스크립터", bulletPoints: [
              "촬영 결과를 기록하고 장면과 장면 사이의 연결을  확인하는 역할",
                  "연출이 놓친 옥에 티를 체크",
                  "작성 문서 : 스크립트"
            ]),
            ContentWithTitle(title: "4 슬레이터", bulletPoints: [
              "촬영 시작 전 슬레이트를 치는 역할",
                  "프리 프로덕션 기간에는 미술부 소통 담당"
            ]),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
