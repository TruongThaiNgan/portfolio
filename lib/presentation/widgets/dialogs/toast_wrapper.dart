import 'package:flutter/material.dart';
import 'package:bot_toast/bot_toast.dart';

import 'widgets/loading_alert.dart';
import 'widgets/status_toast.dart';

class XToast {
  static CancelFunc? loadingCancel;
  static get isShowLoading => loadingCancel != null;

  static void show(String? message) {
    BotToast.showText(text: message ?? '');
  }

  static showLoading() {
    if (isShowLoading == false) {
      loadingCancel = BotToast.showCustomLoading(
        toastBuilder: (_) => const XLoadingAlert(),
        crossPage: true,
        ignoreContentClick: true,
      );
    }
  }

  static hideLoading() {
    if (isShowLoading) {
      loadingCancel?.call();
      loadingCancel = null;
    }
  }

  static void success(String? message) {
    _showMessage(
      const Icon(Icons.check_circle, color: Color(0xFF00BC68), size: 20),
      message,
    );
  }

  static void error(String? message) {
    _showMessage(
      const Icon(Icons.error, color: Colors.red, size: 20),
      message,
    );
  }

  static void _showMessage(Widget icon, String? message) {
    BotToast.showCustomText(
      toastBuilder: (_) => XStatusToast(message, icon: icon),
      align: const Alignment(0, -0.8),
    );
  }
}
