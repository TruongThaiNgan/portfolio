import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/styles.dart';
import 'package:flutter_boilerplate/presentation/widgets/coming_soon_screen.dart';
import 'package:flutter_boilerplate/presentation/widgets/custom_grid_view.dart';

class BlogsScreen extends StatelessWidget {
  const BlogsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> skills = [
      "Flutter",
      "Dart",
      "Firebase",
      "Git",
      "GitHub",
      "GitLab",
      "Bitbucket",
      "Jira",
      "Trello",
      "Slack",
      "Figma",
      "Adobe XD",
      "Zeplin",
      "Postman",
      "Insomnia",
      "Visual Studio Code",
      "Android Studio",
      "Xcode",
      "IntelliJ IDEA",
      "WebStorm",
      "PyCharm",
      "DataGrip",
      "AppCode",
      "CLion",
      "Rider",
      "GoLand",
      "PhpStorm",
      "RubyMine",
      "ReSharper",
    ];

    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Blogs",
            style: AppStyles.titleLarge,
          ),
          SizedBox(height: 16),
          Expanded(child: ComingSoonScreen())
          // CustomGridView(
          //     items: skills,
          //     mainAxisSpacing: 16,
          //     crossAxisSpacing: 16,
          //     builder: (item) {
          //       return Container(
          //         color: Colors.red,
          //         height: 100,
          //       );
          //     })
        ],
      ),
    );
  }
}
