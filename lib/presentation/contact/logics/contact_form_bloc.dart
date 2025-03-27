import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/domain/di/domain_manager.dart';
import 'package:flutter_boilerplate/domain/entity/contact/contact_param.dart';
import 'package:flutter_boilerplate/presentation/widgets/dialogs/toast_wrapper.dart';

part 'contact_form_state.dart';

class ContactFormBloc extends Cubit<ContactFormState> {
  ContactFormBloc() : super(const ContactFormState());

  final DomainManager domain = DomainManager();

  void updateEmail(String value) {
    emit(state.copyWith(email: value));
  }

  void updateName(String value) {
    emit(state.copyWith(name: value));
  }

  void updateSubject(String value) {
    emit(state.copyWith(subject: value));
  }

  void updateMessage(String value) {
    emit(state.copyWith(message: value));
  }

  Future<void> onSubmit(
    BuildContext context, {
    required VoidCallback onSuccess,
    required VoidCallback onFailed,
  }) async {
    emit(state.copyWith(isSubmitting: true));
    XToast.showLoading();
    try {
      final contactParam = ContactParam(
        email: state.email,
        name: state.name,
        subject: state.subject,
        message: state.message,
      );

      bool isSuccess = await domain.contact.send(contactParam);

      if (isSuccess) {
        onSuccess();
      } else {
        onFailed();
      }
    } catch (e) {
      onFailed();
    }

    XToast.hideLoading();
    emit(state.copyWith(isSubmitting: false));
  }
}
