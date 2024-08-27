import 'package:film_docs/resources/design_system.dart';
import 'package:film_docs/views/6_art_views/art_intro_view.dart';
import 'package:film_docs/views/6_art_views/art_person_view.dart';
import 'package:film_docs/views/6_art_views/art_step_view.dart';
import 'package:flutter/material.dart';

import '../../resources/components/custom_appBar.dart';
import '../../resources/components/file_download_button.dart';
import '../../resources/components/inner_navigation_text.dart';
import '../../resources/components/step_line_img.dart';
import '../../resources/data/download_url_links.dart';
import 'art_docs_view.dart';

class ArtView extends StatelessWidget {
  const ArtView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryBackColor,
      appBar: CustomAppBar(
          screenH: MediaQuery.of(context).size.height,
          title: '미술',
          subTitle: 'Art Department',
          iconColor: artColor,
          imgName: 'artImg'),
      body: Column(
        children: [
          const SizedBox(height: 8),
          const InnerNavigationTitle(
              title: '미술부 파트 소개',
              view: ArtIntroView(),
              iconName: 'questionIcon',
              isLine: true),
          StepLineImg(
              title: '미술부 프로덕션 단계',
              stepImg: 'artStep',
              view: ArtStepView()),
          const InnerNavigationTitle(
              title: '미술부 구성',
              view: ArtPersonView(),
              iconName: 'personIcon',
              isLine: true),
          const InnerNavigationTitle(
              title: '미술부 작성 문서 상세 설명',
              view: ArtDocsView(),
              iconName: 'folderIcon',
              isLine: false),
          Spacer(),
          Center(
            child: FileDownloadButton(
                documentUrl: artAll,
                color: artColor,
                isAll: true),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
