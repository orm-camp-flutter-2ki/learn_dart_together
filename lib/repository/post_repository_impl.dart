import 'dart:convert';
import 'package:learn_dart_together/repository/post_repository.dart';

import '../24_03_26/post.dart';
import '../data_source/post_api.dart';

class PostRepositoryImpl implements PostRepository {
  final PostApi _api = PostApi();

  @override
  Future<Post> getPost(int id) async {
    final response = await _api.getPost(id);
    final json = jsonDecode(response);
    return Post.fromJson(json);
  }

  @override
  Future<List<Post>> getPosts({int? page = 1, int? limit = 3}) async {
    final response = await _api.getPosts();

    List jsonList = jsonDecode(response);

    // 전체 개수를 limit으로 나누고 입력한 page에 해당하는 목록을 반환 할 것.
    List<Post> posts = jsonList.map((e) => Post.fromJson(e)).toList();
    final pageStart = limit! * (page! - 1);
    return posts.sublist(pageStart, pageStart + limit);
  }
}
