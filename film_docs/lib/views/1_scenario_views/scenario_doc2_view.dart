import 'package:film_docs/resources/data/download_url_links.dart';
import 'package:film_docs/resources/design_system.dart';
import 'package:flutter/material.dart';
import '../../resources/components/doc_view.dart';
import '../../resources/components/file_download_button.dart';
import '../../resources/components/image_preview.dart';
import '../../resources/data/textData.dart';

class ScenarioDocTwoView extends StatelessWidget {
  const ScenarioDocTwoView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      alignment: Alignment.center,
      children: [
        SingleChildScrollView(
          child: Stack(
            children: [
              const DocumentView(
                index: "2 / 4",
                title: '시놉시스',
                subTitle: '사람들에게 보여주기 위한 기획서',
                content: scenarioDocTwoText,
              ),
              Container(
                height: screenHeight + 200,
                padding: const EdgeInsets.fromLTRB(50, 80, 22, 130),
                alignment: Alignment.bottomRight,
                child: const ImagePreview(imageName: 'scenario_2'),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 50,
          child: FileDownloadButton(
              documentUrl: scenarioTwo, color: scenarioColor),
        ),
      ],
    );
  }
}
