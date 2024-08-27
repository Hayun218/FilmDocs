import 'package:film_docs/resources/data/textData.dart';
import 'package:flutter/material.dart';
import '../../resources/components/doc_view.dart';
import '../../resources/components/file_download_button.dart';
import '../../resources/components/image_preview.dart';
import '../../resources/data/download_url_links.dart';
import '../../resources/design_system.dart';

class ArtDocPageTwo extends StatelessWidget {
  const ArtDocPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const DocumentView(
          index: "2 / 3",
          title: '의상 리스트',
          subTitle: '미술부 필요 의상 목록',
          content: artDocTwoText,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(50, 80, 22, 130),
          alignment: Alignment.bottomRight,
          child: const ImagePreview(imageName: 'art_2'),
        ),
        Positioned(
          bottom: 50,
          child: FileDownloadButton(
              documentUrl: artTwo,
              color: artColor),
        ),
      ],
    );
  }
}
