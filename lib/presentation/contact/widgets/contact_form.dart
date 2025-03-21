import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/constants/colors.dart';
import 'package:flutter_boilerplate/presentation/widgets/input.dart';
import 'package:flutter_boilerplate/presentation/widgets/outlined_button.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondaryBackground,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.secondaryText),
      ),
      padding: const EdgeInsets.all(16),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              // Name
              Expanded(
                child: XInput(
                  labelText: 'Name',
                  value: '',
                ),
              ),
              SizedBox(width: 16),
              // EMail
              Expanded(
                child: XInput(
                  labelText: 'Email',
                  value: '',
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          // Subject
          XInput(
            labelText: 'Subject',
            value: '',
          ),

          SizedBox(height: 16),
          // Message
          XInput(
            labelText: 'Message',
            value: '',
            maxLines: 4,
            textAlign: TextAlign.start,
          ),

          SizedBox(height: 16),
          // Submit button
          XOutlinedButton(
            title: 'Send Message',
            icon: Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
