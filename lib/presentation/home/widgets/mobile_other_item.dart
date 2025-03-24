import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/assets.gen.dart';
import 'package:flutter_boilerplate/constants/colors.dart';
import 'package:flutter_boilerplate/constants/styles.dart';

class MobileOtherItem extends StatelessWidget {
  const MobileOtherItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.secondaryBackground,
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.2),
            spreadRadius: 0.5,
            blurRadius: 1,
            offset: const Offset(-0.5, -1),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _icon(),
          const SizedBox(width: 16),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _title(),
                    const SizedBox(
                      height: 4,
                    ),
                    content(),
                  ],
                ),
                _moveIcon(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _moveIcon() {
    return const Icon(
      Icons.keyboard_arrow_right_rounded,
      size: 25,
      color: AppColors.text,
    );
  }

  Widget _icon() {
    return Container(
      child: Assets.icons.github.image(
        width: 25,
        height: 25,
        color: AppColors.primary,
      ),
    );
  }

  Widget _title() {
    return Text(
      "Github",
      style: AppStyles.body.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget content() {
    return Text(
      "item.getContent()",
      softWrap: true,
      style: AppStyles.body.copyWith(
        fontWeight: FontWeight.w100,
        color: AppColors.secondaryText,
      ),
    );
  }
}
