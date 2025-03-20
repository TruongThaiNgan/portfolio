import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/assets.gen.dart';
import 'package:flutter_boilerplate/constants/enums.dart';
import 'package:flutter_boilerplate/constants/styles.dart';
import 'package:flutter_boilerplate/presentation/about_me/widgets/ability_item.dart';
import 'package:flutter_boilerplate/presentation/about_me/widgets/skill_item.dart';
import 'package:flutter_boilerplate/presentation/widgets/custom_grid_view.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "About Me",
            style: AppStyles.titleLarge,
          ),
          const SizedBox(height: 16),
          const Text('''
      A passionate Flutter developer with strong expertise in cross-platform apps, REST APIs, UI/UX, widgets, and state management solutions. Proven track record in delivering cutting-edge solutions, including API integration, third-party libraries, and performance optimization. Adept at debugging to ensure high-quality, responsive apps and An agile collaborator committed to staying current with industry trends.
      
      If you're seeking a skilled Flutter developer to breathe life into your project and exceed your expectations, I am here to collaborate and create magic together. Reach out, and let's transform your vision into a reality!
      '''),

          // Ability section
          _abilitySection(),

          const SizedBox(height: 8),

          _skillSection()
        ],
      ),
    );
  }

  Widget _abilitySection() {
    const List<AbilityAboutMe> abilities = AbilityAboutMe.values;

    return Column(
      children: [
        const Text(
          "What can i do?",
          style: AppStyles.title,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 16),
          child: CustomGridView<AbilityAboutMe>(
            items: abilities,
            builder: (AbilityAboutMe item) => AbilityItem(item: item),
            crossAxisCount: 2,
            shrinkWrap: true,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
        ),
      ],
    );
  }

  Widget _skillSection() {
    final List<AssetGenImage> skills = [
      Assets.icons.flutterIcon,
      Assets.icons.reactIcon,
      Assets.icons.firebaseIcon,
      Assets.icons.androidStudioIcon,
      Assets.icons.xcodeIcon,
      Assets.icons.nodejsIcon,
    ];

    return Column(
      children: [
        const Text(
          "My Skills",
          style: AppStyles.title,
        ),
        const SizedBox(height: 16),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 5,
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
  }
}
