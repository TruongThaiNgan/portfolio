import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/constants/colors.dart';
import 'package:flutter_boilerplate/constants/enums.dart';
import 'package:flutter_boilerplate/presentation/contact/logics/contact_form_bloc.dart';
import 'package:flutter_boilerplate/presentation/contact/logics/count_down_form_sent_bloc.dart';
import 'package:flutter_boilerplate/presentation/widgets/input.dart';
import 'package:flutter_boilerplate/presentation/widgets/outlined_button.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();

  void _onSubmitForm(
    BuildContext context,
  ) {
    bool isValidate = _formKey.currentState!.validate();

    if (isValidate) {
      context.read<ContactFormBloc>().onSubmit(
            onCallback: () => context.read<CountDownFormSentBloc>().onStarted(),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondaryBackground,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.secondaryText),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _nameAndEmail(),
            const SizedBox(height: 16),
            // Subject
            _subjectField(),

            const SizedBox(height: 16),
            // Message
            _messageField(),

            const SizedBox(height: 16),
            // Submit button
            BlocBuilder<CountDownFormSentBloc, CountDownFormSentState>(
                builder: (context, state) {
              return XOutlinedButton(
                title: !state.isDisableForm
                    ? "Send Message "
                    : "Wait : ${state.duration}",
                icon: const Icon(Icons.send),
                enabled: !state.isDisableForm,
                onPressed: () => _onSubmitForm(context),
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _messageField() {
    return BlocBuilder<ContactFormBloc, ContactFormState>(
      buildWhen: (previous, current) => previous.message != current.message,
      builder: (context, state) {
        return XInput(
          labelText: 'Message',
          value: state.message ?? '',
          onChanged: (value) =>
              context.read<ContactFormBloc>().updateMessage(value),
          maxLines: 4,
          textAlign: TextAlign.start,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        );
      },
    );
  }

  Widget _subjectField() {
    return BlocBuilder<ContactFormBloc, ContactFormState>(
      buildWhen: (previous, current) => previous.subject != current.subject,
      builder: (context, state) {
        return XInput(
          labelText: 'Subject',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          value: state.subject ?? '',
        );
      },
    );
  }

  Widget _nameField() {
    return BlocBuilder<ContactFormBloc, ContactFormState>(
      buildWhen: (previous, current) => previous.name != current.name,
      builder: (context, state) {
        return XInput(
          labelText: 'Name',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          value: state.name ?? '',
        );
      },
    );
  }

  Widget _emailField() {
    return BlocBuilder<ContactFormBloc, ContactFormState>(
        buildWhen: (previous, current) => previous.email != current.email,
        builder: (context, state) {
          return XInput(
            labelText: 'Email',
            value: state.email ?? '',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }

              final bool emailValid = RegExp(
                      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                  .hasMatch(value);

              if (!emailValid) {
                return 'Invalid email address';
              }
              return null;
            },
          );
        });
  }

  Widget _nameAndEmail() {
    return LayoutBuilder(
      builder: (context, _) {
        ResponsiveBreakpointsData data = ResponsiveBreakpoints.of(context);

        if (data.equals(XResponsiveBreakpoint.xSmall.name)) {
          return Column(
            children: [
              _nameField(),
              const SizedBox(height: 16),
              _emailField(),
            ],
          );
        }
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: _nameField(),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: _emailField(),
            ),
          ],
        );
      },
    );
  }
}
