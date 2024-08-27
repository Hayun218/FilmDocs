import 'package:film_docs/resources/components/content_with_title.dart';
import 'package:flutter/material.dart';

import '../../resources/design_system.dart';

class ProductionPersonView extends StatelessWidget {
  const ProductionPersonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBlack,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: mainBlack,
        title: const Text('제작부 구성', style: subtitle1),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: productionColor,
            height: 2.0,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            ContentWithTitle(
              title: "1 PD",
              bulletPoints: [
                "영화의 모든 제작 과정에서 ‘제작자'의 역할",
                "문서 업무와 촬영 준비 관련 업무들, 현장 지휘, 배급 관련 업무. 시간과 돈을 관리하는 역할",
                "작성 문서 : 제작부 모든 문서 관리감독, 로케이션 리스트"
              ],
            ),
            ContentWithTitle(title: "2 인물 관련 담당 제작부원", bulletPoints: [
              "촬영장의 모든 사람들을 관리하는 역할",
                  "각 부서별 스태프의 목록을 포함하여 배우의 정보까지 모두 수집",
                  "작성 문서 : 배우 리스트, 스태프 리스트"
            ]),
            ContentWithTitle(title: "3 편의시설 담당 제작부원", bulletPoints: [
              "촬정확한 시간에 식사를 제공하고, 촬영 중간중간 간식을 채워두는 역할",
                  "식사 주문으로 인해 촬영 시간이 딜레이 되는 일이 일어나지 않도록",
                  "작성 문서 : 식비 지출 내역 정리"
            ]),
            ContentWithTitle(title: "4 식사 및 간식 담당 제작부원", bulletPoints: [
              "촬영 시작 전 슬레이트를 치는 역할",
                  "프리 프로덕션 기간에는 미술부 소통 담당"
            ]),
            ContentWithTitle(title: "5 회계", bulletPoints: [
              " 모든 부분의 지출과 수익 내역을 정리하는 역할",
                  "작성 문서 : 예산안, 지출 세부내역, 결산안"
            ]),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
