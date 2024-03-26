import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/0326/data_source/post_repository.dart';
import 'package:learn_dart_together/0326/model/post.dart';

class PostRepositoryImpl implements PostRepository {

  @override
  Future<Post> getPost(int id) async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/$id'));
    Post? post;

    if (response.statusCode == 200) {
      final Map<String, dynamic> json = jsonDecode(response.body);
      post = Post.fromJson(json);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return post ?? (throw Exception('Post is null'));
  }

  @override
  Future<List<Post>> getPosts({int? page, int? limit}) async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    List<Post> postList = [];
    List<List<Post>> postAllPage = [];

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body);
      postList = jsonList.map((e) => Post.fromJson(e)).toList();
      int pageCount = (postList.length / (limit ?? 1)).ceil();
      int index = 0;

      for (int i = 0; i < pageCount; i++) {
        List<Post> currentPage = [];
        for (int j = 0; j < (limit ?? 1) && index < postList.length; j++) {
          currentPage.add(postList[index++]);
        }
        postAllPage.add(currentPage);
      }

    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    List<Post> upToRequestedPage = [];

    for (int i = 0; i < (page ?? 1); i++) {
      for (int j = 0; j < postAllPage[i].length; j++) {
        upToRequestedPage.add(postAllPage[i][j]);
      }
    }

    return upToRequestedPage;
  }

  @override
  Future<List<Post>> getAllPosts() async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    List<Post> postList = [];

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body);
      postList = jsonList.map((e) => Post.fromJson(e)).toList();

    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return postList;
  }
}