import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/model/post.dart';

class PostApi {
  Future<List<Post>> getPosts() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => Post.fromJson(e)).toList();
  }

  Future<Post> getPost(int id) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/$id'));
    final Map<String, dynamic> json = jsonDecode(response.body);
    return Post.fromJson(json);
  }

  Future<List<Post>> getPostsPage(int page, int limit) async {
    final http.Response response = await http.get(Uri.parse(
        'https://jsonplaceholder.typicode.com/posts?page=$page&limit=$limit'));
    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => Post.fromJson(e)).toList();
  }
}
