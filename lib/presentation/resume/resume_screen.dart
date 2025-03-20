import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/styles.dart';
import 'package:flutter_boilerplate/presentation/widgets/coming_soon_screen.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Resume",
          style: AppStyles.titleLarge,
        ),
        SizedBox(height: 16),
        Expanded(child: ComingSoonScreen())
      ],
    );
  }
}
