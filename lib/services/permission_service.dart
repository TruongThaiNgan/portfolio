// import 'package:permission_handler/permission_handler.dart';

// import '../config/devices/app_info.dart';
// import '../dialogs/alert_wrapper.dart';

class PermissionService {
  static Future<bool> requestMicrophonePermission(
      {bool openSetting = true}) async {
    // var status = await Permission.microphone.request();
    // if (status.isDenied || status.isPermanentlyDenied) {
    //   final show = await XAlert.showConfirmDialog(
    //     "Allow ${AppInfo.package.appName} to access this device's microphone",
    //     'We need your microphone to send your message audio, Do you want to grant permission?',
    //   );
    //   if (show == true) {
    //     openAppSettings();
    //   }
    // return false;
    // }
    return true;
  }
}
