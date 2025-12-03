import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<RegisterEvent>((event, emit) async {
      emit(AuthLoading());
      await Future.delayed(const Duration(seconds: 1));

      if (event.email.isNotEmpty && event.password.isNotEmpty) {
        emit(AuthSuccess());
      } else {
        emit(const AuthFailure("Invalid input"));
      }
    });
  }
}
