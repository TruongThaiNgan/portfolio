import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/colors.dart';
import 'package:flutter_boilerplate/constants/styles.dart';
import 'package:flutter_boilerplate/presentation/widgets/hover_wrapper.dart';
import 'dart:html' as html;
import 'package:flutter/services.dart';

class DownloadCvButton extends StatelessWidget {
  const DownloadCvButton({super.key});

  Future<void> downloadAssetFile() async {
    // Load file from assets
    ByteData data = await rootBundle.load('assets/pdf/Truong_Thai_Ngan.pdf');
    Uint8List bytes = data.buffer.asUint8List();

    // Convert bytes to Blob
    final blob = html.Blob([bytes]);

    // Create an Object URL
    final url = html.Url.createObjectUrlFromBlob(blob);

    // Create a download anchor
    // ignore: unused_local_variable
    final anchor = html.AnchorElement(href: url)
      ..setAttribute("download", "Truong_Thai_Ngan.pdf")
      ..click();

    // Revoke the URL to free memory
    html.Url.revokeObjectUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    const primaryColor = AppColors.primary;
    const secondaryColor = AppColors.secondaryText;

    return InkWell(
      onTap: () {
        downloadAssetFile();
      },
      child: HoverWrapper(
        builder: (isHovering) => Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isHovering
                ? primaryColor.withValues(alpha: 0.1)
                : AppColors.background,
            borderRadius: BorderRadius.circular(16)
                .copyWith(topRight: const Radius.circular(0)),
            border: Border.all(
              color: isHovering ? primaryColor : secondaryColor,
            ),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.download,
                size: 16,
                color: AppColors.primary,
              ),
              const SizedBox(width: 2),
              Text(
                "My CV",
                style: AppStyles.body.copyWith(
                  color: isHovering ? AppColors.text : AppColors.primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
