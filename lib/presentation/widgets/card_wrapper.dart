import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/colors.dart';

class CardWrapper extends StatelessWidget {
  const CardWrapper({
    super.key,
    required this.content,
    this.padding,
    this.width,
  });

  final Widget content;
  final EdgeInsetsGeometry? padding;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(16),
      width: width,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.secondaryText,
        ),
        borderRadius: BorderRadius.circular(15),
        color: AppColors.background,
      ),
      child: content,
    );
  }
}
