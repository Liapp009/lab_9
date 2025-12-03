import 'package:equatable/equatable.dart';

abstract class AnimationEvent extends Equatable {
  const AnimationEvent();

  @override
  List<Object?> get props => [];
}

class ToggleAnimationEvent extends AnimationEvent {
  const ToggleAnimationEvent();
}
