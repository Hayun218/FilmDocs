import 'package:film_docs/resources/data/download_url_links.dart';
import 'package:film_docs/resources/data/textData.dart';
import 'package:flutter/material.dart';
import '../../resources/components/doc_view.dart';
import '../../resources/components/file_download_button.dart';
import '../../resources/components/image_preview.dart';
import '../../resources/design_system.dart';

class ScenarioDocOneView extends StatelessWidget {
  const ScenarioDocOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
        children: [
          const DocumentView(
              index: "1 / 4",
              title: '아이디어 개발',
              subTitle: '시나리오를 작성할 때의 첫걸음',
              content: scenarioDocOneText,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(50, 80, 22, 130),
            alignment: Alignment.bottomRight,
            child: const ImagePreview(imageName: 'scenario_1'),
          ),
          Positioned(
            bottom: 50,
            child: FileDownloadButton(
                documentUrl:
                scenarioOne,
                color: scenarioColor),
          ),
        ],
// 화장실 갓다올게
    );
  }
}
