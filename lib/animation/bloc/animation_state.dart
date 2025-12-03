import 'package:equatable/equatable.dart';

abstract class AnimationState extends Equatable {
  const AnimationState();

  @override
  List<Object?> get props => [];
}

class AnimationStopped extends AnimationState {
  const AnimationStopped();
}

class AnimationPlaying extends AnimationState {
  const AnimationPlaying();
}
