import 'package:film_docs/resources/data/textData.dart';
import 'package:flutter/material.dart';
import '../../resources/components/doc_view.dart';
import '../../resources/components/file_download_button.dart';
import '../../resources/components/image_preview.dart';
import '../../resources/data/download_url_links.dart';
import '../../resources/design_system.dart';

class ProductionDocPageFour extends StatelessWidget {
  const ProductionDocPageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const DocumentView(
          index: "4 / 4",
          title: '예결산안, 지출내역',
          subTitle: '회계 관리 문서',
          content: productionDocFourText,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(50, 80, 22, 130),
          alignment: Alignment.bottomRight,
          child: const ImagePreview(imageName: 'production_4-2'),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(22, 80, 50, 130),
          alignment: Alignment.bottomLeft,
          child: const ImagePreview(imageName: 'production_4'),
        ),
        Positioned(
          bottom: 50,
          child: FileDownloadButton(
              documentUrl: productionFour,
              color: productionColor),
        ),
      ],
    );
  }
}
