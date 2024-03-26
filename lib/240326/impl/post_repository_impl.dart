import 'dart:convert';

import 'package:learn_dart_together/240326/model/post.dart';
import 'package:learn_dart_together/240326/repository/post_repository.dart';
import 'package:learn_dart_together/240326/service/http_service.dart';

class PostRepositoryImpl implements PostRepository {
  @override
  Future<Post> getPost(int id) async {
    final result = await HttpService().callGet('https://jsonplaceholder.typicode.com/posts/$id');

    return Post.fromJson(jsonDecode(result));
  }

  @override
  Future<List<Post>> getPosts({int? page, int? limit}) async {
    // page와 limit을 입력하지 않으면 findAll
    final result = await HttpService().callGet('https://jsonplaceholder.typicode.com/posts');
    final List jsonList = jsonDecode(result);
    if (page == null || limit == null) return jsonList.map((e) => Post.fromJson(e)).toList();

    page = page < 1 ? 1 : page;
    final List pageList = jsonList.sublist(limit * (page - 1), page * limit);
    return pageList.map((e) => Post.fromJson(e)).toList();
  }
}