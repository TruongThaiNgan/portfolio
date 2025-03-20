import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/styles.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Coming Soon",
        style: AppStyles.titleLarge.copyWith(fontStyle: FontStyle.italic),
      ),
    );
  }
}
