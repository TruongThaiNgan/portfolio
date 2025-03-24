import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/styles.dart';
import 'package:flutter_boilerplate/presentation/old_projects/widgets/project_item.dart';
import 'package:flutter_boilerplate/presentation/widgets/coming_soon_screen.dart';

class OldProjectsScreen extends StatelessWidget {
  const OldProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = [
      const ComingSoonScreen(),
      const ComingSoonScreen(),
      const ComingSoonScreen(),
      const ComingSoonScreen(),
      const ComingSoonScreen(),
      const ComingSoonScreen(),
    ];
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My old projects",
              style: AppStyles.titleLarge,
            ),
            const SizedBox(height: 16),
            ListView.separated(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) => const ProjectItem(),
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 16);
              },
            )
          ],
        ),
      ),
    );
  }
}
