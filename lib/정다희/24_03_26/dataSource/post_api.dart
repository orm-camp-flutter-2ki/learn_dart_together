import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Model/post.dart';

class PostApi {
  Future<Post> getPost(int id) async {
    final http.Response res =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    if (res.statusCode == 200) {
      final List resList = jsonDecode(res.body);
      // toList.first
      return Post.fromJson(resList.where((element) => element["id"] == id)
          as Map<String, dynamic>);
    } else {
      throw Exception('api 받아오다 에러남');
    }
  }

  Future<List<Post>> getPosts(int page, int limit) async {
    final http.Response res =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    if (res.statusCode == 200) {
      final List resList = jsonDecode(res.body);
      //page
      // limit = 한 페이지당 몇개 ?
      page = page < 1 ? 1 : page;
      return resList
          .map((e) => Post.fromJson(e))
          .toList()
          .sublist(page * limit, (page * limit) + limit);
    } else {
      throw Exception('api 받아오다 에러남');
    }
  }
}
