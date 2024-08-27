import 'package:flutter/material.dart';

class ImagePreview extends StatefulWidget {
  final String imageName;

  const ImagePreview({super.key, required this.imageName});

  @override
  _ImagePreviewState createState() => _ImagePreviewState();
}

class _ImagePreviewState extends State<ImagePreview> {
  bool isFullImageVisible = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Display an image with black opacity at the bottom of the view
        GestureDetector(
          onTap: () {
            setState(() {
              isFullImageVisible = !isFullImageVisible;
            });
          },
          child: SizedBox(
            width: 170,
            child: Stack(
              children: [
                Opacity(
                  opacity: isFullImageVisible ? 0 : 0.3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/documentImg/${widget.imageName}.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Opacity(
                    opacity: isFullImageVisible ? 0 : 1,
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset('assets/icons/imgExpandIcon.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Overlay the full image on top of the entire screen
        if (isFullImageVisible)
          GestureDetector(
            onTap: () {
              setState(() {
                isFullImageVisible = false;
              });
            },
            child: Container(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/documentImg/${widget.imageName}.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  const Positioned(
                    top: 15,
                    right: 20,
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: Icon(Icons.cancel),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
