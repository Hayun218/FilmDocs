import 'package:film_docs/resources/design_system.dart';
import 'package:film_docs/views/1_scenario_views/scenario_docs_view.dart';
import 'package:film_docs/views/1_scenario_views/scenario_intro_view.dart';
import 'package:flutter/material.dart';

import '../../resources/components/custom_appBar.dart';
import '../../resources/components/file_download_button.dart';
import '../../resources/components/inner_navigation_text.dart';
import '../../resources/components/step_line_img.dart';
import '../../resources/data/download_url_links.dart';

class ScenarioView extends StatelessWidget {
  const ScenarioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryBackColor,
      appBar: CustomAppBar(
          screenH: MediaQuery.of(context).size.height,
          title: '각본',
          subTitle: 'Scenario',
          iconColor: scenarioColor,
          imgName: 'scenarioImg'),
      body: Column(
        children: [
          const SizedBox(height: 8),
          const InnerNavigationTitle(
              title: '각본 파트 소개',
              view: ScenarioIntroView(),
              iconName: 'questionIcon',
              isLine: true),
          const StepLineImg(
              title: '각본 단계', stepImg: 'scenarioStep', view: null),
          const InnerNavigationTitle(
              title: '각본 작성 문서 상세 설명',
              view: ScenarioDocsView(),
              iconName: 'folderIcon',
              isLine: false),
          const Opacity(
            opacity: 0,
            child: InnerNavigationTitle(
                title: 'empty',
                view: null,
                iconName: 'folderIcon',
                isLine: false),
          ),
          Spacer(),
          Center(
            child: FileDownloadButton(
                documentUrl: scenarioAll, color: scenarioColor, isAll: true),
          ),
          Spacer()
        ],
      ),
    );
  }
}
