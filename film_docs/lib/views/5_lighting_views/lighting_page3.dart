import 'package:film_docs/resources/data/textData.dart';
import 'package:flutter/material.dart';
import '../../resources/components/doc_view.dart';
import '../../resources/components/file_download_button.dart';
import '../../resources/components/image_preview.dart';
import '../../resources/data/download_url_links.dart';
import '../../resources/design_system.dart';

class LightingDocPageThree extends StatelessWidget {
  const LightingDocPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const DocumentView(
          index: "3 / 3",
          title: '세팅값 리스트',
          subTitle: '조명의 세팅 값을 정리한 문서',
          content: lightingDocThreeText,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(50, 80, 22, 130),
          alignment: Alignment.bottomRight,
          child: const ImagePreview(imageName: 'lighting_3'),
        ),
        Positioned(
          bottom: 50,
          child: FileDownloadButton(
              documentUrl: lightingThree,
              color: lightingColor,
              isBlack: true),
        ),
      ],
    );
  }
}
