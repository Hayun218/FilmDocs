import 'package:film_docs/resources/design_system.dart';
import 'package:film_docs/views/5_lighting_views/lighting_intro_view.dart';
import 'package:film_docs/views/5_lighting_views/lighting_person_view.dart';
import 'package:film_docs/views/5_lighting_views/lighting_step_view.dart';
import 'package:flutter/material.dart';

import '../../resources/components/custom_appBar.dart';
import '../../resources/components/file_download_button.dart';
import '../../resources/components/inner_navigation_text.dart';
import '../../resources/components/step_line_img.dart';
import '../../resources/data/download_url_links.dart';
import 'lighting_docs_view.dart';

class LightingView extends StatelessWidget {
  const LightingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryBackColor,
      appBar: CustomAppBar(
          screenH: MediaQuery.of(context).size.height,
          title: '조명',
          subTitle: 'Lighting',
          iconColor: lightingColor,
          imgName: 'lightingImg'),
      body: Column(
        children: [
          const SizedBox(height: 8),
          const InnerNavigationTitle(
              title: '조명부 파트 소개',
              view: LightingIntroView(),
              iconName: 'questionIcon',
              isLine: true),
          StepLineImg(
              title: '조명부 프로덕션 단계',
              stepImg: 'lightingStep',
              view: LightingStepView()),
          const InnerNavigationTitle(
              title: '조명부 구성',
              view: LightingPersonView(),
              iconName: 'personIcon',
              isLine: true),
          const InnerNavigationTitle(
              title: '조명부 작성 문서 상세 설명',
              view: LightingDocsView(),
              iconName: 'folderIcon',
              isLine: false),
          Spacer(),
          Center(
            child: FileDownloadButton(
                documentUrl: lightingAll,
                color: lightingColor,
                isAll: true,
                isBlack: true),
          ),
          Spacer()
        ],
      ),
    );
  }
}
