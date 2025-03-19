import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/colors.dart';

class CardWrapper extends StatelessWidget {
  const CardWrapper({super.key, required this.content, this.padding});

  final Widget content;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.secondaryTextColor,
        ),
        borderRadius: BorderRadius.circular(15),
        color: AppColors.backgroundColor,
      ),
      child: content,
    );
  }
}
