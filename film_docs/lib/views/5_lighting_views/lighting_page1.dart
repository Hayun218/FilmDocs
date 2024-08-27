import 'package:film_docs/resources/data/textData.dart';
import 'package:flutter/material.dart';
import '../../resources/components/doc_view.dart';
import '../../resources/components/file_download_button.dart';
import '../../resources/components/image_preview.dart';
import '../../resources/data/download_url_links.dart';
import '../../resources/design_system.dart';

class LightingDocPageOne extends StatelessWidget {
  const LightingDocPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const DocumentView(
          index: "1 / 3",
          title: '장비 리스트',
          subTitle: '조명부 필요 장비 목록',
          content: lightingDocOneText,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(50, 80, 22, 130),
          alignment: Alignment.bottomRight,
          child: const ImagePreview(imageName: 'lighting_1'),
        ),
        Positioned(
          bottom: 50,
          child: FileDownloadButton(
              documentUrl: lightingOne,
              color: lightingColor, isBlack: true),
        ),
      ],
    );
  }
}
