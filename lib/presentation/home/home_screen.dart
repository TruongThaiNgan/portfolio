import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/colors.dart';
import 'package:flutter_boilerplate/presentation/home/widgets/home_content.dart';
import 'package:flutter_boilerplate/presentation/home/widgets/profile_sidebar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black.withAlpha((0.95 * 255).round()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 128, vertical: 64),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 2,
              child: ProfileSidebar(),
            ),
            const SizedBox(
              width: 32,
            ),
            const Flexible(
              flex: 8,
              child: HomeContent(),
            )
          ],
        ),
      ),
    );
  }
}
