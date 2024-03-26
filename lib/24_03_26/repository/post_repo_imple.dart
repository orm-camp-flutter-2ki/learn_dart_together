import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_26/model/post.dart';
import 'package:learn_dart_together/24_03_26/repository/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final url = 'https://jsonplaceholder.typicode.com/posts';

  @override
  Future<Post> getPost(int id) async {
    final http.Response response = await http.get(Uri.parse('$url/$id'));

    final Map<String, dynamic> json = jsonDecode(response.body);

    return Post.fromJson(json);
  }

  @override
  Future<List<Post>> getPosts(int page, int limit) async {
    final http.Response response = await http.get(Uri.parse(url));

    List<dynamic> jsonList = jsonDecode(response.body);

    if (page < 1) {
      page = 1;
    }
    // 0 1 2
    // 3 4 5

    // 1 -> 0, 3
    // 2 -> 3, 6

    int start = (page - 1) * limit;
    int end = start + limit;

    List<dynamic> selected = jsonList.getRange(start, end).toList();

    return selected.map((e) => Post.fromJson(e)).toList();
  }

  @override
  Future<List<Post>> getPostsAll() async {
    final http.Response response = await http.get(Uri.parse(url));

    List<dynamic> jsonList = jsonDecode(response.body);

    return jsonList.map((e) => Post.fromJson(e)).toList();
  }
}
