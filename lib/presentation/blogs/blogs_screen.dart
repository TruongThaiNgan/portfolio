import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/enums.dart';
import 'package:flutter_boilerplate/constants/styles.dart';
import 'package:flutter_boilerplate/presentation/blogs/widgets/blog_item.dart';
import 'package:flutter_boilerplate/presentation/widgets/coming_soon_screen.dart';
import 'package:flutter_boilerplate/presentation/widgets/custom_grid_view.dart';
import 'package:responsive_framework/responsive_framework.dart';

class BlogsScreen extends StatelessWidget {
  const BlogsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = [];

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
          child: Builder(builder: (context) {
            if (items.isEmpty) {
              return const Center(child: ComingSoonScreen());
            }

            return LayoutBuilder(
              builder: (context, constraints) {
                int crossAxisCount = 3;
                ResponsiveBreakpointsData data =
                    ResponsiveBreakpoints.of(context);

                if (data.equals(XResponsiveBreakpoint.xSmall.name)) {
                  crossAxisCount = 1;
                } else if (data.equals(XResponsiveBreakpoint.medium.name) ||
                    data.equals(XResponsiveBreakpoint.small.name)) {
                  crossAxisCount = 2;
                } else {
                  crossAxisCount = 3;
                }

                return CustomGridView(
                  padding: const EdgeInsets.all(16),
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  items: items,
                  builder: (item) => const BlogItem(),
                );
              },
            );
          }),
        )
      ],
    );
  }
}
