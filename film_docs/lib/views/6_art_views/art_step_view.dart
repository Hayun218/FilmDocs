import 'package:film_docs/resources/helper/scroll_helper.dart';
import 'package:flutter/material.dart';

import '../../resources/components/three_dots.dart';
import '../../resources/data/textData.dart';
import '../../resources/design_system.dart';

class ArtStepView extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  ArtStepView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBlack,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: mainBlack,
        title: const Text('미술부 프로덕션 단계', style: subtitle1),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: artColor,
            height: 2.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 34),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ThreeDotsOnLine(
                  dotColor: artColor, scrollToText: (text) => ScrollHelper.scrollToText(context, _scrollController, text)),
              const SizedBox(height: 50),
              Container(
                key: ScrollHelper.getPreProductionKey(),
                child: const Text("Pre-production", style: subtitle1),
              ),
              const SizedBox(height: 6),
              const Text(artPreP, style: body1),
              const SizedBox(height: 40),
              Container(
                key: ScrollHelper.getProductionKey(),
                child: const Text("Production", style: subtitle1),
              ),
              const SizedBox(height: 6),
              const Text(artP, style: body1),
              const SizedBox(height: 40),
              Container(
                key: ScrollHelper.getPostProductionKey(),
                child: const Text("Post-Production", style: subtitle1),
              ),
              const SizedBox(height: 6),
              const Text(artPostP, style: body1),
            ],
          ),
        ),
      ),
    );
  }
}
