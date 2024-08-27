import 'package:film_docs/resources/data/textData.dart';
import 'package:flutter/material.dart';
import '../../resources/components/doc_view.dart';
import '../../resources/components/file_download_button.dart';
import '../../resources/components/image_preview.dart';
import '../../resources/data/download_url_links.dart';
import '../../resources/design_system.dart';

class ProductionDocPageTwo extends StatelessWidget {
  const ProductionDocPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const DocumentView(
          index: "2 / 4",
          title: '배우 리스트',
          subTitle: '모든 배우의 정보를 정리해둔 문서',
          content: productionDocTwoText,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(50, 80, 22, 130),
          alignment: Alignment.bottomRight,
          child: const ImagePreview(imageName: 'production_2'),
        ),
        Positioned(
          bottom: 50,
          child: FileDownloadButton(
              documentUrl: productionTwo,
              color: productionColor),
        ),
      ],
    );
  }
}
