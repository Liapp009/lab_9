import 'dart:async';

class AuthRepository {
  Future<bool> register({
    required String email,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 2));
    return true;
  }
}
