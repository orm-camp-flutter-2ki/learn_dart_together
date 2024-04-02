import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240329/Dto/post_dto.dart';
import 'package:learn_dart_together/240329/data_source/post_api.dart';
import 'package:learn_dart_together/240329/mapper/post_mapper.dart';
import 'package:learn_dart_together/240329/model/post/post.dart';

class PostApiImpl implements PostApi {
  final http.Client _client;
  final String baseUrl;
  PostApiImpl({http.Client? client, String? baseUrl})
      : _client = client ?? http.Client(),
        baseUrl = baseUrl ?? 'https://jsonplaceholder.typicode.com/posts';

  @override
  Future<List<Post>> getPostsAll() async {
    final response = await _client.get(Uri.parse(baseUrl)).onError((error, stackTrace) => throw Exception('Error: $error'));

    final jsonList = response.statusCode == 200 ? jsonDecode(utf8.decode(response.bodyBytes)) : throw Exception('statusCode:${response.statusCode}');

    final posts = jsonList.map((e) => PostDto.fromJson(e).toPost());

    return posts;
  }

  @override
  Future<List<Post>> getPosts({required int page, required int limit}) async {
    final response = await _client.get(Uri.parse('https://jsonplaceholder.typicode.com/posts?_$page=1&_$limit=2')).onError((error, stackTrace) => throw Exception('Error: $error'));

    final jsonList = response.statusCode == 200 ? jsonDecode(utf8.decode(response.bodyBytes)) : throw Exception('statusCode:${response.statusCode}');

    final posts = jsonList.map((e) => PostDto.fromJson(e).toPost());
    return posts;
  }

  @override
  Future<int> addPost(PostDto postDto) async {
    final response = await http.post(
      Uri.parse(baseUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'id': 2,
      }),
    );
    print(response);
    return 1;
  }

  @override
  Future<Post> getPost(int id) async {
    final response = await http.get(Uri.parse('$baseUrl?id=$id')).onError((error, stackTrace) => throw Exception('Error: $error'));
    final json = response.statusCode == 200 ? jsonDecode(response.body) : throw Exception('statusCode:${response.statusCode}');

    return PostDto.fromJson(json).toPost();
  }

  @override
  Future<bool> deletePost(int postId) {
    throw UnimplementedError();
  }

  @override
  Future<Post> updatePost(PostDto postDto) {
    // TODO: implement updatePost
    throw UnimplementedError();
  }
}

main() {
  PostApiImpl().addPost(Post);
}
