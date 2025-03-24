import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/styles.dart';
import 'package:flutter_boilerplate/presentation/blogs/widgets/blog_item.dart';
import 'package:flutter_boilerplate/presentation/widgets/coming_soon_screen.dart';
import 'package:flutter_boilerplate/presentation/widgets/custom_grid_view.dart';

class BlogsScreen extends StatelessWidget {
  const BlogsScreen({super.key});

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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Blogs',
            style: AppStyles.titleLarge,
          ),
        ),
        Expanded(
          child: CustomGridView(
            padding: const EdgeInsets.all(16),
            crossAxisCount: 3,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            items: items,
            builder: (item) => const BlogItem(),
          ),
        )
      ],
    );
  }
}
