import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/styles.dart';
import 'package:flutter_boilerplate/presentation/contact/widgets/contact_form.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Contact me",
          style: AppStyles.titleLarge,
        ),
        SizedBox(height: 16),
        ContactForm(),
      ],
    );
  }
}
