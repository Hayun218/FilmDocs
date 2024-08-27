import 'package:film_docs/resources/design_system.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class FileDownloadButton extends StatelessWidget {
  final Uri? documentUrl;
  final Color color;
  final bool? isAll;
  final bool? isBlack;

  const FileDownloadButton({super.key, 
    this.documentUrl,
    required this.color,
    this.isAll, this.isBlack,
  });

  Future<void> _launchURL() async {
    if (await canLaunchUrl(documentUrl!)) {
      await launchUrl(documentUrl!);
    } else {
      throw 'Could not launch $documentUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: documentUrl == null ? 0 : 1,
      child: ElevatedButton(
        onPressed: () => documentUrl == null ? null : _launchURL(),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
          elevation: MaterialStateProperty.all(4),
          shadowColor: MaterialStateProperty.all<Color>(
              Colors.white.withOpacity(0.1)), // Set custom shadow color
        ),
        child: Container(
          width: isAll == null ? 120 : 140,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.file_download_outlined, size: 20, color: isBlack == null ? Colors.white : textBlack),
              const SizedBox(width: 4),
              Text(isAll == null ? "양식 다운로드" : "양식 전체 다운로드",
                  style: buttonText.copyWith(color: isBlack == null ? Colors.white : textBlack)),
            ],
          ),
        ),
      ),
    );
  }
}
