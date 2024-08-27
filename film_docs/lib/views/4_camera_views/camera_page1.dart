import 'package:film_docs/resources/data/textData.dart';
import 'package:flutter/material.dart';
import '../../resources/components/doc_view.dart';
import '../../resources/components/file_download_button.dart';
import '../../resources/components/image_preview.dart';
import '../../resources/data/download_url_links.dart';
import '../../resources/design_system.dart';

class CameraDocPageOne extends StatelessWidget {
  const CameraDocPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const DocumentView(
          index: "1 / 4",
          title: '샷 리스트',
          subTitle: '모든 샷의 촬영 계획',
          content: cameraDocOneText,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(50, 80, 22, 130),
          alignment: Alignment.bottomRight,
          child: const ImagePreview(imageName: 'camera_1'),
        ),
        Positioned(
          bottom: 50,
          child: FileDownloadButton(
              documentUrl: cameraOne,
              color: cameraColor),
        ),
      ],
    );
  }
}
