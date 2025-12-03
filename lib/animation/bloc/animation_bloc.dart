import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../repository/animation_repository.dart';
import 'animation_event.dart';
import 'animation_state.dart';

class AnimationBloc extends Bloc<AnimationEvent, AnimationState> {
  final AnimationRepository repository;

  AnimationBloc(this.repository) : super(const AnimationStopped()) {
    on<ToggleAnimationEvent>((event, emit) {
      repository.logToggle();

      if (state is AnimationStopped) {
        emit(const AnimationPlaying());
      } else {
        emit(const AnimationStopped());
      }
    });
  }
}
