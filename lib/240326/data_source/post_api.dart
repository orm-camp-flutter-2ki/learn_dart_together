import 'dart:convert';

import 'package:dart_cli_practice/240326/model/post.dart';
import 'package:http/http.dart' as http;

class PostApi {
  Future<Post> getPost(int id) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/$id'));

    return Post.fromJson(jsonDecode(response.body));
  }

  Future<List<Post>> getPosts() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    List jsonList = jsonDecode(response.body);

    return jsonList.map((e) => Post.fromJson(e)).toList();
  }
}
