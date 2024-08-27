import 'package:film_docs/resources/data/textData.dart';
import 'package:flutter/material.dart';
import '../../resources/components/doc_view.dart';
import '../../resources/components/file_download_button.dart';
import '../../resources/components/image_preview.dart';
import '../../resources/data/download_url_links.dart';
import '../../resources/design_system.dart';

class CameraDocPageFour extends StatelessWidget {
  const CameraDocPageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const DocumentView(
          index: "4 / 4",
          title: '세팅값 리스트',
          subTitle: '카메라의 세팅 값을 정리한 문서',
          content: cameraDocFourText,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(50, 80, 22, 130),
          alignment: Alignment.bottomRight,
          child: const ImagePreview(imageName: 'camera_4'),
        ),
        Positioned(
          bottom: 50,
          child: FileDownloadButton(
              documentUrl: cameraFour,
              color: cameraColor),
        ),
      ],
    );
  }
}
