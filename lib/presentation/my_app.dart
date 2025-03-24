import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/colors.dart';
import 'package:flutter_boilerplate/constants/enums.dart';
import 'package:flutter_boilerplate/router/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Thái Ngân',
      theme: ThemeData(
        textTheme: const TextTheme().copyWith(
          bodySmall: const TextStyle(color: AppColors.text),
          bodyMedium: const TextStyle(color: AppColors.text),
          bodyLarge: const TextStyle(color: AppColors.text),
          labelSmall: const TextStyle(color: AppColors.text),
          labelMedium: const TextStyle(color: AppColors.text),
          labelLarge: const TextStyle(color: AppColors.text),
          displaySmall: const TextStyle(color: AppColors.text),
          displayMedium: const TextStyle(color: AppColors.text),
          displayLarge: const TextStyle(color: AppColors.text),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router,
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          Breakpoint(
            start: 0,
            end: 575,
            name: XResponsiveBreakpoint.xSmall.name,
          ),
          Breakpoint(
            start: 576,
            end: 767,
            name: XResponsiveBreakpoint.small.name,
          ),
          Breakpoint(
            start: 768,
            end: 991,
            name: XResponsiveBreakpoint.medium.name,
          ),
          Breakpoint(
            start: 992,
            end: 1199,
            name: XResponsiveBreakpoint.large.name,
          ),
          Breakpoint(
            start: 1200,
            end: 1399,
            name: XResponsiveBreakpoint.extraLarge.name,
          ),
          Breakpoint(
            start: 1400,
            end: double.infinity,
            name: XResponsiveBreakpoint.extraExtraLarge.name,
          ),
        ],
      ),
    );
  }
}
