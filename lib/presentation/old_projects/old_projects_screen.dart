import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/styles.dart';
import 'package:flutter_boilerplate/presentation/old_projects/widgets/project_item.dart';
import 'package:flutter_boilerplate/presentation/widgets/coming_soon_screen.dart';
import 'package:flutter_boilerplate/presentation/widgets/custom_grid_view.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "My old projects",
            style: AppStyles.titleLarge,
          ),
          const SizedBox(height: 16),
          CustomGridView(
            crossAxisCount: 3,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            items: items,
            builder: (item) => const ProjectItem(),
          )
        ],
      ),
    );
  }
}
