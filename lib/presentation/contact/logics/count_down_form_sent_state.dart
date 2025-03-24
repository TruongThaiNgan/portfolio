// ignore_for_file: public_member_api_docs, sort_constructors_first

part of './count_down_form_sent_bloc.dart';

class CountDownFormSentState extends Equatable {
  final int duration;
  const CountDownFormSentState({
    required this.duration,
  });

  bool get isDisableForm => duration > 0;

  @override
  List<Object> get props => [duration];

  CountDownFormSentState copyWith({
    int? duration,
  }) {
    return CountDownFormSentState(
      duration: duration ?? this.duration,
    );
  }
}
