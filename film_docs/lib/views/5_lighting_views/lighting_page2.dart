import 'package:film_docs/resources/data/textData.dart';
import 'package:flutter/material.dart';
import '../../resources/components/doc_view.dart';
import '../../resources/components/file_download_button.dart';
import '../../resources/components/image_preview.dart';
import '../../resources/data/download_url_links.dart';
import '../../resources/design_system.dart';

class LightingDocPageTwo extends StatelessWidget {
  const LightingDocPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const DocumentView(
          index: "2 / 3",
          title: '플로어 플랜',
          subTitle: '조명의 위치를 기록한 조감도',
          content: lightingDocTwoText,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(50, 80, 22, 130),
          alignment: Alignment.bottomRight,
          child: const ImagePreview(imageName: 'lighting_2'),
        ),
        Positioned(
          bottom: 50,
          child: FileDownloadButton(
              documentUrl: lightingTwo,
              color: lightingColor,
              isBlack: true),
        ),
      ],
    );
  }
}
