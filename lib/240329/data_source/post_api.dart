import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dto/post_dto.dart';
import '../model/post.dart';

class PostApi {
  final uri = 'https://jsonplaceholder.typicode.com';

  Future<Post> getPost(int id) async {
    final http.Response response = await http.get(Uri.parse('$uri/posts/$id'));
    final Map<String, dynamic> json = (response.statusCode == 200)
        ? jsonDecode(response.body)
        : throw Exception('에러 확인');
    return Post.fromJson(json);
  }

  Future<bool> deletePost(int postId) async {
    final http.Response response =
        await http.delete(Uri.parse('$uri/posts/$postId'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> json = jsonDecode(response.body);
      return true;
    } else {
      throw Exception(response.statusCode);
    }
  }

  Future<List<Post>> getPostAll() async {
    final http.Response response = await http.get(Uri.parse('$uri/posts'));
    if (response.statusCode == 200) {
      final List jsonList = jsonDecode(response.body);
      final List<Post> postList =
          jsonList.map((e) => Post.fromJson(e)).toList();
      return postList;
    } else {
      throw Exception('에러 확인');
    }
  }

  Future<List<Post>> getPosts({required int page, required int limit}) async {
    final http.Response response =
        await http.get(Uri.parse('$uri/posts?_page=$page&_limit=$limit'));
    if (response.statusCode == 200) {
      final List jsonList = jsonDecode(response.body);
      final List<Post> postList =
          jsonList.map((e) => Post.fromJson(e)).toList();
      return postList;
    } else {
      throw Exception(response.statusCode);
    }
  }

  Future<int> addPost(PostDto postDto) async {
    final http.Response response = await http.post(Uri.parse('$uri/posts'),
        body: jsonEncode(postDto.toJson()));
    // print(response.statusCode);
    return PostDto.fromJson(jsonDecode(response.body)).id?.toInt() ?? 0;
  }

  Future<PostDto> updatePost(PostDto postDto) async {
    final post = '$uri/posts/${postDto.id}';
    final http.Response response =
        await http.put(Uri.parse(post), body: jsonEncode(postDto.toJson()));
    print(response.body);
    print(post);
    return PostDto.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
  }
}
