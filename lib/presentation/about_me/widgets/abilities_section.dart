import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/enums.dart';
import 'package:flutter_boilerplate/constants/styles.dart';
import 'package:flutter_boilerplate/presentation/about_me/widgets/ability_item.dart';
import 'package:flutter_boilerplate/presentation/widgets/custom_grid_view.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AbilitiesSection extends StatefulWidget {
  const AbilitiesSection({super.key});

  @override
  State<AbilitiesSection> createState() => _AbilitiesSectionState();
}

class _AbilitiesSectionState extends State<AbilitiesSection> {
  final List<AbilityAboutMe> abilities = AbilityAboutMe.values;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "What can i do?",
          style: AppStyles.title,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 16),
          child: LayoutBuilder(builder: (context, _) {
            ResponsiveBreakpointsData data = ResponsiveBreakpoints.of(context);

            bool isMediumOrXSmall =
                data.equals(XResponsiveBreakpoint.medium.name) ||
                    data.equals(XResponsiveBreakpoint.xSmall.name);
            int crossAxisCount = isMediumOrXSmall ? 1 : 2;

            return CustomGridView<AbilityAboutMe>(
              items: abilities,
              builder: (AbilityAboutMe item) => AbilityItem(item: item),
              crossAxisCount: crossAxisCount,
              shrinkWrap: true,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
            );
          }),
        ),
      ],
    );
  }
}
