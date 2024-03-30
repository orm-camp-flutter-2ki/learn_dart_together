import 'dart:convert';

import 'package:learn_dart_together/240329/dto/post_dto.dart';

import 'post_api.dart';
import 'package:http/http.dart' as http;

class PostApiImpl implements PostApi {
  static const String baseUrl = 'https://jsonplaceholder.typicode.com/posts';

  @override
  Future<int> addPost(PostDto postDto) async {
    final response = await http.post(Uri.parse(baseUrl), body: jsonEncode(postDto));
    if (response.statusCode == 201) {
      return postDto.id != null ? postDto.id!.toInt() : -1;
    } else {
      throw Exception('Post ERROR: HTTP Status Code ${response.statusCode}');
    }
  }

  @override
  Future<bool> deletePost(int postId) async {
    final response = await http.delete(Uri.parse('$baseUrl/$postId'));

    return response.statusCode == 200 ? true : false;
  }

  @override
  Future<PostDto> getPost(int id) async {
    final response = await http.get(Uri.parse('$baseUrl/$id'));
    if (response.statusCode == 200) {
      final Map<String, dynamic> json = jsonDecode(response.body);
      final result = PostDto.fromJson(json);

      return result;
    } else {
      throw Exception('Post ERROR: HTTP Status Code ${response.statusCode}');
    }
  }

  // @override
  // Future<List<PostDto>> getPosts({int? page, int? limit}) async {
  //   final response = await http.get(Uri.parse(baseUrl));
  //   if( response.statusCode == 200) {
  //     final List json = jsonDecode(response.body);
  //     final result = json.map((e) => PostDto.fromJson(e)).toList();
  //
  //     return result;
  //   } else {
  //     throw Exception('Post ERROR: HTTP Status Code ${response.statusCode}');
  //   }
  // }

  @override
  Future<List<PostDto>> getPostsAll() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      final List json = jsonDecode(response.body);
      final result = json.map((e) => PostDto.fromJson(e)).toList();

      return result;
    } else {
      throw Exception('Post ERROR: HTTP Status Code ${response.statusCode}');
    }
  }

  @override
  Future<PostDto> updatePost(int id, PostDto postDto) async {
    final response = await http.put(Uri.parse('$baseUrl/$id'), body: jsonEncode(postDto));

    if (response.statusCode == 200) {
      // final json = PostDto.fromJson(jsonDecode(response.body));
      // return json;

      return postDto;
    } else {
      throw Exception('Post ERROR: HTTP Status Code ${response.statusCode}');
    }
  }
}
