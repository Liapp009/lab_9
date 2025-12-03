import 'package:dio/dio.dart';

class RestClientDio {
  static late RestClientDio _instance;
  late Dio _http;

  static get instance {
    _instance = RestClientDio._internal();
    return _instance;
  }

  RestClientDio._internal() {
    BaseOptions options = BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com/',
      connectTimeout: 5000,
      receiveTimeout: 5000,
      sendTimeout: 5000,
      contentType: 'application/x-www-form-urlencoded',
    );

    _http = Dio(options);
  }

  factory RestClientDio() => RestClientDio._internal();

  get client => _http;

  dispose() {
    _http.close();
  }
}
