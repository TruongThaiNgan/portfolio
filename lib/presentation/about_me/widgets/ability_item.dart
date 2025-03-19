import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/colors.dart';
import 'package:flutter_boilerplate/constants/enums.dart';

class AbilityItem extends StatelessWidget {
  const AbilityItem({super.key, required this.item});

  final AbilityAboutMe item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFF242424),
        boxShadow: [
          BoxShadow(
            color: AppColors.primaryColor.withValues(alpha: 0.2),
            spreadRadius: 0.5,
            blurRadius: 1,
            offset: const Offset(-0.5, -1),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _icon(),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _title(),
                const SizedBox(
                  height: 4,
                ),
                content(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _icon() {
    return Container(
      child: item.getIcon().image(
            width: 35,
            height: 35,
            color: AppColors.primaryColor,
          ),
    );
  }

  Widget _title() {
    return Text(
      item.getTitle(),
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget content() {
    return Text(
      item.getContent(),
      softWrap: true,
    );
  }
}
