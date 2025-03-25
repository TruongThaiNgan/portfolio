import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/styles.dart';
import 'package:flutter_boilerplate/presentation/about_me/widgets/abilities_section.dart';
import 'package:flutter_boilerplate/presentation/about_me/widgets/skills_section.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About Me",
              style: AppStyles.titleLarge,
            ),
            SizedBox(height: 16),
            Text('''
        I am a Mobile Developer with 4 years of experience specializing in Flutter and React Native to build high-performance, cross-platform mobile applications for iOS and Android. I focus on delivering smooth UI/UX, optimizing app performance, and writing clean, maintainable code that aligns with business needs. While my primary focus is mobile development, I also have experience in backend and web development using Node.js and React.

        I have worked on various projects, including e-commerce apps, fintech platforms, social media applications. I thrive in Agile environments and collaborate effectively with Backend Developers, UI/UX Designers, and Product Managers to deliver high-quality mobile solutions.
        '''),
            AbilitiesSection(),
            SizedBox(height: 8),
            SkillsSection()
          ],
        ),
      ),
    );
  }
}
