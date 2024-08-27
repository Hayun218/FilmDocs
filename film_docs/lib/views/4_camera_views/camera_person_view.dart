import 'package:film_docs/resources/components/content_with_title.dart';
import 'package:flutter/material.dart';

import '../../resources/design_system.dart';

class CameraPersonView extends StatelessWidget {
  const CameraPersonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBlack,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: mainBlack,
        title: const Text('촬영부 구성', style: subtitle1),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: cameraColor,
            height: 2.0,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            ContentWithTitle(title: "1 촬영감독", bulletPoints: [
              "연출의 그림을 영상으로 만들어내는 역할",
              "샷을 짜고, 카메라를 운용하고, 필요에 따라서 촬영이 다 끝난 이후에 DI(색 보정) 작업을 진행",
              "작성 문서 : 샷 리스트, 장비리스트, 플로어플랜"
            ]),
            ContentWithTitle(title: "2 퍼스트(Assistant Camera)", bulletPoints: [
              "카메라의 포커스를 맞추는 역할",
              "모니터를 보며 정해진 부분에 포커스를 맞추어 연출과 촬영감독이 의도한 장면 연출"
            ]),
            ContentWithTitle(title: "3 그 외 촬영부원", bulletPoints: [
              "삼각대의 높낮이 조절을 돕는 역할, 렌즈 교체를 도와주는 역할, 배터리 관리를 하는 역할 등",
              "촬영부원 중 한 명은 카메라 세팅 값 리스트 작성",
              "작성 문서 : 세팅 값 리스트"
            ]),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
