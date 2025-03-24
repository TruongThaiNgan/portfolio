import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/services/user_prefs.dart';

part './count_down_form_sent_state.dart';

class CountDownFormSentBloc extends Cubit<CountDownFormSentState> {
  CountDownFormSentBloc()
      : super(CountDownFormSentState(
            duration: UserPrefs.instance.getDuration())) {
    if (state.duration > 0) {
      onStarted(duration: state.duration);
    }
  }

  late Timer timer;

  static const int _duration = 30;

  late int endTime;

  void _setDuration(int duration) {
    emit(state.copyWith(duration: duration));
    UserPrefs.instance.setDuration(duration);
  }

  void onStarted({int? duration}) {
    endTime = duration ?? _duration;

    _setDuration(endTime);

    timer = Timer.periodic(const Duration(seconds: 1), (t) {
      _setDuration(endTime - t.tick);
      if (t.tick == endTime) {
        t.cancel();
      }
    });
  }

  @override
  Future<void> close() {
    timer.cancel();
    return super.close();
  }
}
