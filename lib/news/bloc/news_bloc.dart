import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../repository/news_repository.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsRepository repository;

  NewsBloc(this.repository) : super(NewsInitial()) {
    on<LoadNewsEvent>((event, emit) async {
      emit(NewsLoading());

      try {
        final list = await repository.fetchNews();
        emit(NewsLoaded(list));
      } catch (e) {
        emit(NewsError(e.toString()));
      }
    });
  }
}
