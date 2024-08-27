import 'package:flutter/cupertino.dart';

class ScrollHelper {
  static final GlobalKey _key1 = GlobalKey();
  static final GlobalKey _key2 = GlobalKey();
  static final GlobalKey _key3 = GlobalKey();

  static RenderObject? getKeyContext(String text) {
    switch (text) {
      case 'Pre-production':
        return _key1.currentContext?.findRenderObject();
      case 'Production':
        return _key2.currentContext?.findRenderObject();
      case 'Post-production':
        return _key3.currentContext?.findRenderObject();
      default:
        return null;
    }
  }

  static GlobalKey getPreProductionKey() => _key1;
  static GlobalKey getProductionKey() => _key2;
  static GlobalKey getPostProductionKey() => _key3;

  static void scrollToText(
      BuildContext context, ScrollController scrollController, String text) {
    final keyContext = getKeyContext(text);

    if (keyContext != null) {
      final RenderBox renderBox = keyContext as RenderBox;
      final screenHeight = MediaQuery.of(context).size.height;
      final targetOffset = renderBox.localToGlobal(Offset.zero).dy - 150;
      final maxScrollExtent = scrollController.position.maxScrollExtent;

      if (targetOffset < maxScrollExtent) {
        scrollController.animateTo(
          targetOffset,
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      } else {
        scrollController.animateTo(
          maxScrollExtent,
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      }
    }
  }
}
