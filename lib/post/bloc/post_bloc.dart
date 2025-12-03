import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../repository/post_repository.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostRepository repository;

  PostBloc(this.repository) : super(PostInitial()) {
    on<LoadPostEvent>((event, emit) async {
      emit(PostLoading());
      try {
        final post = await repository.fetchPost();
        emit(PostLoaded(post));
      } catch (e) {
        emit(PostError(e.toString()));
      }
    });
  }
}
