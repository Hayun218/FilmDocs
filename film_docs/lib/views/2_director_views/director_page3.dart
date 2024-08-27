import 'package:film_docs/resources/design_system.dart';
import 'package:flutter/material.dart';
import '../../resources/components/doc_view.dart';
import '../../resources/components/file_download_button.dart';
import '../../resources/components/image_preview.dart';
import '../../resources/data/download_url_links.dart';
import '../../resources/data/textData.dart';

class DirectorDocPageThree extends StatelessWidget {
  const DirectorDocPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return  Stack(
      alignment: Alignment.center,
      children: [
        SingleChildScrollView(
          child: Stack(
            children: [
              const DocumentView(
                index: "3 / 5",
                title: '스토리보드',
                subTitle: '실제 영상물에서 보여질 그대로 그린 그림',
                content: directorDocThreeText,
              ),
              Container(
                height: screenHeight + 100,
                padding: const EdgeInsets.fromLTRB(50, 80, 22, 130),
                alignment: Alignment.bottomRight,
                child: const ImagePreview(imageName: 'director_3'),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 50,
          child: FileDownloadButton(
              documentUrl: directorThree,
              color: directorColor),
        ),
      ],

    );
  }
}
