import 'package:film_docs/resources/design_system.dart';
import 'package:film_docs/views/7_sound_views/sound_intro_view.dart';
import 'package:film_docs/views/7_sound_views/sound_person_view.dart';
import 'package:film_docs/views/7_sound_views/sound_step_view.dart';
import 'package:flutter/material.dart';

import '../../resources/components/custom_appBar.dart';
import '../../resources/components/file_download_button.dart';
import '../../resources/components/inner_navigation_text.dart';
import '../../resources/components/step_line_img.dart';
import '../../resources/data/download_url_links.dart';
import 'sound_docs_view.dart';

class SoundView extends StatelessWidget {
  const SoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryBackColor,
      appBar: CustomAppBar(
          screenH: MediaQuery.of(context).size.height,
          title: '음향',
          subTitle: 'Sound Department',
          iconColor: soundColor,
          imgName: 'soundImg'),
      body: Column(
        children: [
          const SizedBox(height: 8),
          const InnerNavigationTitle(
              title: '음향 파트 소개',
              view: SoundIntroView(),
              iconName: 'questionIcon',
              isLine: true),
          StepLineImg(
              title: '음향부 프로덕션 단계',
              stepImg: 'soundStep',
              view: SoundStepView()),
          const InnerNavigationTitle(
              title: '음향부 구성',
              view: SoundPersonView(),
              iconName: 'personIcon',
              isLine: true),
          const InnerNavigationTitle(
              title: '음향부 작성 문서 상세 설명',
              view: SoundDocsView(),
              iconName: 'folderIcon',
              isLine: false),
          Spacer(),
          Center(
            child: FileDownloadButton(
                documentUrl: soundAll,
                color: soundColor,
                isAll: true,
                isBlack: true),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
