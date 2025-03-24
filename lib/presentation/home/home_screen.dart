import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/colors.dart';
import 'package:flutter_boilerplate/constants/enums.dart';
import 'package:flutter_boilerplate/presentation/home/widgets/home_content.dart';
import 'package:flutter_boilerplate/presentation/home/widgets/profile_sidebar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black.withAlpha((0.95 * 255).round()),
      body: Center(
        child: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth <=
              XResponsiveBreakpoint.medium.getMinWidth()) {
            return _mobileView();
          }

          return _desktopView(context);
        }),
      ),
    );
  }

  Widget _desktopView(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1400),
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
        vertical: MediaQuery.of(context).size.height * 0.05,
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileSidebar(),
          SizedBox(
            width: 32,
          ),
          Expanded(
            child: HomeContent(),
          ),
        ],
      ),
    );
  }

  Widget _mobileView() {
    return const HomeContent();
  }
}
