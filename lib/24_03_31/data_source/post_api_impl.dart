import 'dart:convert';

import 'package:http/http.dart';
import 'package:learn_dart_together/24_03_28/http/http.dart';
import 'package:learn_dart_together/24_03_31/data_source/post_api.dart';
import 'package:learn_dart_together/24_03_31/model/post_model.dart';

class PostApiImpl implements PostApi {
  static const _baseUrl = 'https://jsonplaceholder.typicode.com';
  final Http _http;

  PostApiImpl({required http}) : _http = http;

  @override
  Future<List<PostModel>> getPosts() async {
    final response = await _http.get(Uri.parse('$_baseUrl/posts'));
    return (jsonDecode(response.body) as List).map((e) => PostModel.fromJson(e as Map<String, dynamic>)).toList();
  }

  @override
  Future<List<PostModel>> getPagePosts(int page, int limit) async {
    final response =
        await _http.get(Uri.parse('$_baseUrl/posts').replace(queryParameters: {'_page': '$page', '_limit': '$limit'}));
    return (jsonDecode(response.body) as List).map((e) => PostModel.fromJson(e as Map<String, dynamic>)).toList();
  }

  @override
  Future<PostModel> getPost(int id) async {
    final response = await _http.get(Uri.parse('$_baseUrl/posts/$id'));
    return PostModel.fromJson(jsonDecode(response.body));
  }

  @override
  Future<int> addPost(PostModel postModel) async {
    final response = await _http.add(Uri.parse('$_baseUrl/posts'), postModel);
    if (response.statusCode == 201) {
      final responseData = jsonDecode(response.body);
      return responseData['id'] as int;
    } else {
      throw Exception('Failed to add post. Status code: ${response.statusCode}. Response body: ${response.body}');
    }
  }

  @override
  Future<bool> deletePost(int postId) async {
    final response = await _http.delete(Uri.parse('$_baseUrl/posts'), postId);
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<PostModel> updatePost(PostModel postModel) async {
    final response = await _http.update(Uri.parse('$_baseUrl/posts'), postModel);
    if (response.statusCode == 200) {
      return PostModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('404 오류 히히~!');
    }
  }
}
