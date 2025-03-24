import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/assets.gen.dart';
import 'package:flutter_boilerplate/constants/enums.dart';
import 'package:flutter_boilerplate/constants/styles.dart';
import 'package:flutter_boilerplate/presentation/about_me/widgets/skill_item.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<AssetGenImage> skills = [
      Assets.icons.flutterIcon,
      Assets.icons.reactIcon,
      Assets.icons.firebaseIcon,
      Assets.icons.androidStudioIcon,
      Assets.icons.xcodeIcon,
      Assets.icons.nodejsIcon,
    ];

    return LayoutBuilder(builder: (context, _) {
      int crossAxisCount = 5;
      ResponsiveBreakpointsData data = ResponsiveBreakpoints.of(context);
      if (data.equals(XResponsiveBreakpoint.medium.name) ||
          data.equals(XResponsiveBreakpoint.xSmall.name)) {
        crossAxisCount = 3;
      } else {
        crossAxisCount = 5;
      }

      return Column(
        children: [
          const Text(
            "My Skills",
            style: AppStyles.title,
          ),
          const SizedBox(height: 16),
          GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: skills
                .map(
                  (e) => SkillItem(icon: e),
                )
                .toList(),
          ),
        ],
      );
    });
  }
}
