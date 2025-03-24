import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/presentation/widgets/dialogs/toast_wrapper.dart';

part 'contact_form_state.dart';

class ContactFormBloc extends Cubit<ContactFormState> {
  ContactFormBloc() : super(const ContactFormState());

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

  Future<void> onSubmit({
    required VoidCallback onCallback,
  }) async {
    emit(state.copyWith(isSubmitting: true));
    XToast.showLoading();

    await Future.delayed(const Duration(seconds: 5));

    onCallback();
    XToast.hideLoading();
    emit(state.copyWith(isSubmitting: false));
  }
}
