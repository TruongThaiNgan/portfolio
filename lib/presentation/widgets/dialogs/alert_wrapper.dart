import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/colors.dart';
import 'package:flutter_boilerplate/constants/styles.dart';
import 'package:flutter_boilerplate/presentation/widgets/dialogs/widgets/alert_dialog.dart';

class XAlert {
  /// show the dialog
  static Future<String?> show(
    BuildContext context, {
    String? title,
    Widget? titleWidget,
    String? body,
    List<XAlertButton> actions = const [],
  }) async {
    return showDialog<String>(
      context: context,
      builder: (context) {
        return XAlertDialog(
          title: title,
          titleWidget: titleWidget,
          content: body,
          actions: actions,
        );
      },
    );
  }

  static Future<String?> showSuccessDialog(
      BuildContext context, String message) async {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          backgroundColor: AppColors.background,
          title: Row(
            children: [
              const Icon(Icons.check_circle, color: Colors.green),
              const SizedBox(width: 8),
              Text(
                "Success",
                style: AppStyles.titleSmall.copyWith(
                  color: Colors.green,
                ),
              ),
            ],
          ),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK", style: TextStyle(color: Colors.green)),
            ),
          ],
        );
      },
    );
  }

  static Future<String?> showErrorDialog(BuildContext context, String message) {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          title: Row(
            children: [
              const Icon(Icons.error, color: AppColors.error),
              const SizedBox(width: 8),
              Text(
                "Error",
                style: AppStyles.titleSmall.copyWith(
                  color: AppColors.error,
                ),
              ),
            ],
          ),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK", style: TextStyle(color: AppColors.error)),
            ),
          ],
        );
      },
    );
  }
}
