import 'package:film_docs/resources/design_system.dart';
import 'package:flutter/material.dart';
import '../../resources/components/doc_view.dart';
import '../../resources/components/file_download_button.dart';
import '../../resources/components/image_preview.dart';
import '../../resources/data/download_url_links.dart';
import '../../resources/data/textData.dart';

class DirectorDocPageFour extends StatelessWidget {
  const DirectorDocPageFour({super.key});

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
                index: "4 / 5",
                title: '일촬표',
                subTitle: '일일 촬영 계획표',
                content: directorDocFourText,
              ),
              Container(
                height: screenHeight,
                padding: const EdgeInsets.fromLTRB(50, 80, 22, 130),
                alignment: Alignment.bottomRight,
                child: const ImagePreview(imageName: 'director_4'),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 50,
          child: FileDownloadButton(
              documentUrl: directorFour,
              color: directorColor),
        ),
      ],

    );
  }
}
