import 'package:dio/dio.dart';

class PostRepository {
  final Dio _dio = Dio();

  Future<Map<String, dynamic>> fetchPost() async {
    final response = await _dio.get(
      'https://jsonplaceholder.typicode.com/posts/1',
    );
    return response.data;
  }
}
