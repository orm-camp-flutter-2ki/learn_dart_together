import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240323_study/posts.dart';

void main() {
  final dlad = PostApi().getPosts();
}

class PostApi {
  Future<List<Post>> getPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      List json = jsonDecode(response.body);
      List<Post> data = json.map((json) => Post.fromJson(json)).toList();
      return data;
    } else {
      throw Exception('Response 에러');
    }
  }
}
