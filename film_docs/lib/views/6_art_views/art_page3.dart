import 'package:film_docs/resources/data/textData.dart';
import 'package:flutter/material.dart';
import '../../resources/components/doc_view.dart';
import '../../resources/components/file_download_button.dart';
import '../../resources/components/image_preview.dart';
import '../../resources/data/download_url_links.dart';
import '../../resources/design_system.dart';

class ArtDocPageThree extends StatelessWidget {
  const ArtDocPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const DocumentView(
          index: "3 / 3",
          title: '분장 리스트',
          subTitle: '미술부 필요 분장 목록',
          content: artDocThreeText,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(50, 80, 22, 130),
          alignment: Alignment.bottomRight,
          child: const ImagePreview(imageName: 'art_3'),
        ),
        Positioned(
          bottom: 50,
          child: FileDownloadButton(
              documentUrl: artThree,
              color: artColor),
        ),
      ],
    );
  }
}
