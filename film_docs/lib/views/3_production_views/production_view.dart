import 'package:film_docs/resources/design_system.dart';
import 'package:film_docs/views/3_production_views/production_docs_view.dart';
import 'package:film_docs/views/3_production_views/production_intro_view.dart';
import 'package:film_docs/views/3_production_views/production_person_view.dart';
import 'package:film_docs/views/3_production_views/production_step_view.dart';
import 'package:flutter/material.dart';

import '../../resources/components/custom_appBar.dart';
import '../../resources/components/file_download_button.dart';
import '../../resources/components/inner_navigation_text.dart';
import '../../resources/components/step_line_img.dart';
import '../../resources/data/download_url_links.dart';

class ProductionView extends StatelessWidget {
  const ProductionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryBackColor,
      appBar: CustomAppBar(
          screenH: MediaQuery.of(context).size.height,
          title: '제작',
          subTitle: 'Production',
          iconColor: productionColor,
          imgName: 'productionImg'),
      body: Column(
        children: [
          const SizedBox(height: 8),
          const InnerNavigationTitle(
              title: '제작부 파트 소개',
              view: ProductionIntroView(),
              iconName: 'questionIcon',
              isLine: true),
          StepLineImg(
              title: '제작부 프로덕션 단계',
              stepImg: 'productionStep',
              view: ProductionStepView()),
          const InnerNavigationTitle(
              title: '제작부 구성',
              view: ProductionPersonView(),
              iconName: 'personIcon',
              isLine: true),
          const InnerNavigationTitle(
              title: '제작부 작성 문서 상세 설명',
              view: ProductionDocsView(),
              iconName: 'folderIcon',
              isLine: false),
          Spacer(),
          Center(
            child: FileDownloadButton(
                documentUrl: productionAll,
                color: productionColor,
                isAll: true),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
