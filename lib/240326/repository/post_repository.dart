import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/repository/album_repository.dart';
import 'package:learn_dart_together/240326/vo/post.dart';

import '../vo/albums.dart';

class PostRepository {
  Future<Post> getPost(int id) async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    Map<String, dynamic> json = jsonDecode(response.body);

    return Post.fromJson(json);
  }

  Future<List<Post>> getPosts() async {
    // try catch 해야
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    // response.body == Json String
    final List jsonList = jsonDecode(response.body);
    // completed 키가 있고, ture인 것 filter
    final filteredList = jsonList.where((map) => map['completed']);

    return filteredList.map((e) => Post.fromJson(e)).toList();
  }

  Future<List<Post>> getPostss(int page, int limit) async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    // response.body == Json String
    final List jsonList = jsonDecode(response.body);
    // completed 키가 있고, ture인 것 filter
    final filteredList = jsonList.where((map) => map['completed']);

    return filteredList.map((e) => Post.fromJson(e)).toList();
  }
}
