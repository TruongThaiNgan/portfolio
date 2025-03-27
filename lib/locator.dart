import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_boilerplate/domain/di/domain_manager.dart';
// import 'package:flutter_boilerplate/domain/repository/contact/contact_repository.dart';
import 'package:flutter_boilerplate/services/user_prefs.dart';
import 'package:flutter_boilerplate/utils/bloc_observer.dart';
import 'package:flutter_boilerplate/utils/device/device_utils.dart';
// import 'package:get_it/get_it.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future initializeApp({String? name}) async {
  WidgetsFlutterBinding.ensureInitialized();

  _locator();

  await dotenv.load(fileName: ".env");

  await Future.wait([
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ),
    DeviceUtils.loadInfo(),
    UserPrefs.instance.initialize(),
  ]);

  Bloc.observer = XBlocObserver();
}

void _locator() {
  // GetIt.I.registerLazySingleton(() => DomainManager());
}
