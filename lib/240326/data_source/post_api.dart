import 'dart:convert';

import '../model/post.dart';
import 'package:http/http.dart' as http;

class PostApi {
  final String baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<Post> getPost(num id) async {
    Post? post;
    final response = await http.get(Uri.parse('$baseUrl/posts/$id'));

    try {
      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = jsonDecode(response.body);

        final postData = Post.fromJson(jsonData);

        return postData;
      } else {
        throw Exception('과제 6 ERROR: HTTP Status Code ${response.statusCode}');
      }
    } catch (e) {
      return post ?? (throw Exception('Post is null'));
    }
  }

  Future<List<Post>> getPosts() async {
    final response = await http.get(Uri.parse('$baseUrl/posts'));

    try {
      if (response.statusCode == 200) {
        final List jsonData = jsonDecode(response.body);

        final jsonList = jsonData.map((e) => Post.fromJson(e)).toList();

        return jsonList;
      } else {
        throw Exception('과제 6 ERROR: HTTP Status Code ${response.statusCode}');
      }
    } catch (e) {
      return [];
    }
  }
}
