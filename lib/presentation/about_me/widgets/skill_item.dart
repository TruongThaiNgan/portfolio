import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/assets.gen.dart';
import 'package:flutter_boilerplate/constants/colors.dart';

class SkillItem extends StatelessWidget {
  const SkillItem({super.key, required this.icon});

  final AssetGenImage icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary.withAlpha((0.1 * 255).round()),
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.all(24),
      child: icon.image(width: 72, height: 72),
    );
  }
}
