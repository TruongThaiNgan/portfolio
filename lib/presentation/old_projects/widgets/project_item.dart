import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/assets.gen.dart';
import 'package:flutter_boilerplate/constants/colors.dart';
import 'package:flutter_boilerplate/constants/styles.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.secondaryText,
        ),
        borderRadius: BorderRadius.circular(17),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: _thumbnail(),
            ),
            Expanded(
              flex: 6,
              child: _info(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _thumbnail() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondaryText,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Assets.icons.flutterIcon.image(),
    );
  }

  Widget _info() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "GigAdmin",
            style: AppStyles.titleSmall,
          ),
          const SizedBox(height: 8),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "My Role",
                  style: AppStyles.body.copyWith(fontWeight: FontWeight.bold),
                ),
                const TextSpan(text: ": "),
                const TextSpan(text: "Web Developer"),
              ],
              style: AppStyles.body,
            ),
          ),
          const SizedBox(height: 4),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Technologies",
                  style: AppStyles.body.copyWith(fontWeight: FontWeight.bold),
                ),
                const TextSpan(text: ": "),
                const TextSpan(text: "Flutter, Firebase"),
              ],
              style: AppStyles.body,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
          ),
        ],
      ),
    );
  }
}
