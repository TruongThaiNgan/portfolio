import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/colors.dart';
import 'package:flutter_boilerplate/constants/enums.dart';
import 'package:flutter_boilerplate/constants/styles.dart';
import 'package:flutter_boilerplate/presentation/widgets/hover_wrapper.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({
    super.key,
    required this.item,
  });

  final OldProject item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: item.url != null
          ? () {
              launchUrl(Uri.parse(item.url!));
            }
          : null,
      child: HoverWrapper(
        builder: (isHovering) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: isHovering ? AppColors.primary : AppColors.secondaryText,
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
                    child: _info(isHovering),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _thumbnail() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondaryText,
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(item.logo.path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _info(bool isHovering) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.name,
            style: AppStyles.titleSmall.copyWith(
              color: isHovering ? AppColors.primary : AppColors.text,
              decoration: isHovering ? TextDecoration.underline : null,
              decorationColor: AppColors.primary,
            ),
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
                TextSpan(text: item.role),
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
                TextSpan(text: item.technologies),
              ],
              style: AppStyles.body,
            ),
          ),
          const SizedBox(height: 4),
          Text(item.description),
        ],
      ),
    );
  }
}
