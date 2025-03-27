import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    return web;
  }

  static FirebaseOptions web = FirebaseOptions(
    apiKey: dotenv.env['apiKey'] ?? '',
    authDomain: dotenv.env['authDomain'] ?? '',
    projectId: dotenv.env['projectId'] ?? '',
    storageBucket: dotenv.env['storageBucket'] ?? '',
    messagingSenderId: dotenv.env['messagingSenderId'] ?? '',
    appId: dotenv.env['appId'] ?? '',
  );
}
