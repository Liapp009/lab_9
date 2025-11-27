import 'package:dio/dio.dart';
import '../blocs/auth/model/profile.dart';
import '../blocs/auth/model/rest_client/rest_client.dart';

class ProfileRepository {
  late final RestClient _client;

  ProfileRepository() {
    final dio = Dio();
    _client = RestClient(dio);
  }

  Future<Profile> fetchProfile() {
    return _client.getProfile();
  }
}
