import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/colors.dart';

class AppStyles {
  static const title = TextStyle(
    fontSize: 24,
    color: AppColors.text,
    fontWeight: FontWeight.w700,
  );
  static const titleLarge = TextStyle(
    fontSize: 48,
    color: AppColors.text,
    fontWeight: FontWeight.w700,
  );

  static const titleSmall = TextStyle(
    fontSize: 18,
    color: AppColors.text,
    fontWeight: FontWeight.w700,
  );

  static const body = TextStyle(
    fontSize: 14,
    color: AppColors.text,
    fontWeight: FontWeight.normal,
  );
}
