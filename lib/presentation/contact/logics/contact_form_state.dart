part of 'contact_form_bloc.dart';

class ContactFormState extends Equatable {
  final String? email;
  final String? name;
  final String? subject;
  final String? message;
  final bool isSubmitting;
  const ContactFormState({
    this.email,
    this.name,
    this.subject,
    this.message,
    this.isSubmitting = false,
  });

  @override
  List<Object?> get props => [email, name, subject, message, isSubmitting];

  ContactFormState copyWith({
    String? email,
    String? name,
    String? subject,
    String? message,
    bool? isSubmitting,
  }) {
    return ContactFormState(
      email: email ?? this.email,
      name: name ?? this.name,
      subject: subject ?? this.subject,
      message: message ?? this.message,
      isSubmitting: isSubmitting ?? this.isSubmitting,
    );
  }
}
