import 'package:film_docs/resources/design_system.dart';
import 'package:flutter/material.dart';
import '../../resources/components/doc_view.dart';
import '../../resources/components/file_download_button.dart';
import '../../resources/components/image_preview.dart';
import '../../resources/data/download_url_links.dart';
import '../../resources/data/textData.dart';

class DirectorDocPageFive extends StatelessWidget {
  const DirectorDocPageFive({super.key});

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
                index: "5 / 5",
                title: '스크립트',
                subTitle: '촬영의 결과를 정리한 문서',
                content: directorDocFiveText,
              ),
              Container(
                height: screenHeight,
                padding: const EdgeInsets.fromLTRB(50, 80, 22, 100),
                alignment: Alignment.bottomRight,
                child: const ImagePreview(imageName: 'director_5'),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 50,
          child: FileDownloadButton(
              documentUrl: directorFive,
              color: directorColor),
        ),
      ],

    );
  }
}
