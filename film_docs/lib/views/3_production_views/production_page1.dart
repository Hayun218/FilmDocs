import 'package:film_docs/resources/data/textData.dart';
import 'package:flutter/material.dart';
import '../../resources/components/doc_view.dart';
import '../../resources/components/file_download_button.dart';
import '../../resources/components/image_preview.dart';
import '../../resources/data/download_url_links.dart';
import '../../resources/design_system.dart';

class ProductionDocPageOne extends StatelessWidget {
  const ProductionDocPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const DocumentView(
          index: "1 / 4",
          title: '로케이션 리스트',
          subTitle: '촬영 장소를 정리해둔 목록',
          content: productionDocOneText,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(50, 80, 22, 130),
          alignment: Alignment.bottomRight,
          child: const ImagePreview(imageName: 'production_1'),
        ),
        Positioned(
          bottom: 50,
          child: FileDownloadButton(
              documentUrl: productionOne,
              color: productionColor),
        ),
      ],
    );
  }
}
