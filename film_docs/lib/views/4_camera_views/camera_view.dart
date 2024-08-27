import 'package:film_docs/resources/design_system.dart';
import 'package:film_docs/views/4_camera_views/camera_intro_view.dart';
import 'package:film_docs/views/4_camera_views/camera_person_view.dart';
import 'package:film_docs/views/4_camera_views/camera_step_view.dart';
import 'package:flutter/material.dart';

import '../../resources/components/custom_appBar.dart';
import '../../resources/components/file_download_button.dart';
import '../../resources/components/inner_navigation_text.dart';
import '../../resources/components/step_line_img.dart';
import '../../resources/data/download_url_links.dart';
import 'camera_docs_view.dart';

class CameraView extends StatelessWidget {
  const CameraView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryBackColor,
      appBar: CustomAppBar(
          screenH: MediaQuery.of(context).size.height,
          title: '촬영',
          subTitle: 'Camera',
          iconColor: cameraColor,
          imgName: 'cameraImg'),
      body: Column(
        children: [
          const SizedBox(height: 8),
          const InnerNavigationTitle(
              title: '촬영부 파트 소개',
              view: CameraIntroView(),
              iconName: 'questionIcon',
              isLine: true),
          StepLineImg(
              title: '촬영부 프로덕션 단계',
              stepImg: 'cameraStep',
              view: CameraStepView()),
          const InnerNavigationTitle(
              title: '촬영부 구성',
              view: CameraPersonView(),
              iconName: 'personIcon',
              isLine: true),
          const InnerNavigationTitle(
              title: '촬영부 작성 문서 상세 설명',
              view: CameraDocsView(),
              iconName: 'folderIcon',
              isLine: false),
          Spacer(),
          Center(
            child: FileDownloadButton(
                documentUrl: cameraAll, color: cameraColor, isAll: true),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
