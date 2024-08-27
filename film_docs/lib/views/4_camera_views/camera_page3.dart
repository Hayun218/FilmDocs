import 'package:film_docs/resources/data/textData.dart';
import 'package:flutter/material.dart';
import '../../resources/components/doc_view.dart';
import '../../resources/components/file_download_button.dart';
import '../../resources/components/image_preview.dart';
import '../../resources/data/download_url_links.dart';
import '../../resources/design_system.dart';

class CameraDocPageThree extends StatelessWidget {
  const CameraDocPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const DocumentView(
          index: "3 / 4",
          title: '플로어 플랜',
          subTitle: '카메라의 위치와 동선을 기록한 조감도',
          content: cameraDocThreeText,
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(50, 80, 22, 130),
          alignment: Alignment.bottomRight,
          child: const ImagePreview(imageName: 'camera_3'),
        ),
        Positioned(
          bottom: 50,
          child: FileDownloadButton(
              documentUrl: cameraThree,
              color: cameraColor),
        ),
      ],
    );
  }
}
