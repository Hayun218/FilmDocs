import 'package:film_docs/resources/design_system.dart';
import 'package:flutter/material.dart';

import '../../resources/components/custom_appBar.dart';
import '../../resources/components/file_download_button.dart';
import '../../resources/components/inner_navigation_text.dart';
import '../../resources/components/step_line_img.dart';
import '../../resources/data/download_url_links.dart';
import 'director_docs_view.dart';
import 'director_intro_view.dart';
import 'director_person_view.dart';
import 'director_step_view.dart';

class DirectorView extends StatelessWidget {
  const DirectorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryBackColor,
      appBar: CustomAppBar(
          screenH: MediaQuery.of(context).size.height,
          title: '연출',
          subTitle: 'Director',
          iconColor: directorColor,
          imgName: 'directorImg'),
      body: Column(
        children: [
          const SizedBox(height: 8),
          const InnerNavigationTitle(
              title: '연출 파트 소개',
              view: DirectorIntroView(),
              iconName: 'questionIcon',
              isLine: true),
          StepLineImg(
              title: '연출부 프로덕션 단계',
              stepImg: 'directorStep',
              view: DirectorStepView()),
          const InnerNavigationTitle(
              title: '연출부 구성',
              view: DirectorPersonView(),
              iconName: 'personIcon',
              isLine: true),
          const InnerNavigationTitle(
              title: '연출 작성 문서 상세 설명',
              view: DirectorDocsView(),
              iconName: 'folderIcon',
              isLine: false),
          Spacer(),
          Center(
            child: FileDownloadButton(
                documentUrl: directorAll, color: directorColor, isAll: true),
          ),
          Spacer()
        ],
      ),
    );
  }
}
