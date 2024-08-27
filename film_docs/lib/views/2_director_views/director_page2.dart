import 'package:film_docs/resources/data/textData.dart';
import 'package:flutter/material.dart';
import '../../resources/components/doc_view.dart';

class DirectorDocPageTwo extends StatelessWidget {
  const DirectorDocPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        DocumentView(
          index: "2 / 5",
          title: '스크립트 브레이크다운',
          subTitle: '시나리오를 하나하나 뜯어보는 작업',
          content: directorDocTwoText,
        ),
      ],
    );
  }
}
