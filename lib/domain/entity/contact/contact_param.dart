// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ContactParam {
  final String? email;
  final String? name;
  final String? subject;
  final String? message;
  ContactParam({
    this.email,
    this.name,
    this.subject,
    this.message,
  });

  ContactParam empty() {
    return ContactParam();
  }

  ContactParam copyWith({
    String? email,
    String? name,
    String? subject,
    String? message,
  }) {
    return ContactParam(
      email: email ?? this.email,
      name: name ?? this.name,
      subject: subject ?? this.subject,
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'name': name,
      'subject': subject,
      'message': message,
    };
  }

  factory ContactParam.fromMap(Map<String, dynamic> map) {
    return ContactParam(
      email: map['email'] != null ? map['email'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      subject: map['subject'] != null ? map['subject'] as String : null,
      message: map['message'] != null ? map['message'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ContactParam.fromJson(String source) =>
      ContactParam.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ContactParam(email: $email, name: $name, subject: $subject, message: $message)';
  }

  @override
  bool operator ==(covariant ContactParam other) {
    if (identical(this, other)) return true;

    return other.email == email &&
        other.name == name &&
        other.subject == subject &&
        other.message == message;
  }

  @override
  int get hashCode {
    return email.hashCode ^ name.hashCode ^ subject.hashCode ^ message.hashCode;
  }
}
