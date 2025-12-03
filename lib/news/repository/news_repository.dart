import 'dart:convert';
import 'package:http/http.dart' as http;

class NewsRepository {
  final String _url = "https://jsonplaceholder.typicode.com/posts";

  Future<List<dynamic>> fetchNews() async {
    final response = await http.get(Uri.parse(_url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body) as List<dynamic>;
    } else {
      throw Exception("Failed to load news");
    }
  }
}
