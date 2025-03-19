import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/colors.dart';
import 'package:flutter_boilerplate/router/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Thái Ngân',
      theme: ThemeData(
        textTheme: const TextTheme().copyWith(
          bodySmall: const TextStyle(color: AppColors.textColor),
          bodyMedium: const TextStyle(color: AppColors.textColor),
          bodyLarge: const TextStyle(color: AppColors.textColor),
          labelSmall: const TextStyle(color: AppColors.textColor),
          labelMedium: const TextStyle(color: AppColors.textColor),
          labelLarge: const TextStyle(color: AppColors.textColor),
          displaySmall: const TextStyle(color: AppColors.textColor),
          displayMedium: const TextStyle(color: AppColors.textColor),
          displayLarge: const TextStyle(color: AppColors.textColor),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router,
    );
  }
}
