import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/colors.dart';
import 'package:flutter_boilerplate/constants/styles.dart';
import 'package:flutter_boilerplate/presentation/contact/widgets/contact_form.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                "Contact me",
                style: AppStyles.titleLarge.copyWith(color: AppColors.white),
              ),
            ),
          ),
          const SizedBox(height: 32),
          const Expanded(flex: 2, child: ContactForm()),
        ],
      ),
    );
  }
}
