import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240325/model/todo.dart';
import 'package:learn_dart_together/240326/model/photo.dart';

import '../model/album.dart';
import '../model/comment.dart';
import '../model/post.dart';
import '../model/user.dart';

class JsonPlaceHolderApi {
  final http.Client _client;

  final _baseUrl = 'https://jsonplaceholder.typicode.com';

  JsonPlaceHolderApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<Comment>> getComments() async {
    final http.Response response =
        await _client.get(Uri.parse('$_baseUrl/comments'));

    List<Comment> results = [];
    if (response.statusCode == 200) {
      final jsonList = jsonDecode(response.body) as List;

      results = jsonList.map((e) => Comment.fromJson(e)).toList();
    } else {
      throw Exception('뭔가 에러');
    }

    return results;
  }

  Future<List<Album>> getAlbums() async {
    final response = await _client.get(Uri.parse('$_baseUrl/albums'));

    // 섹시 코드
    List jsonList = (response.statusCode == 200)
        ? jsonDecode(response.body)
        : throw Exception('뭔가 에러');

    return jsonList.map((e) => Album.fromJson(e)).toList();
  }

  Future<List<Photo>> getPhotos() async {
    final response = await _client.get(Uri.parse('$_baseUrl/photos'));

    final jsonList = jsonDecode(response.body) as List;

    return jsonList.map((e) => Photo.fromJson(e)).toList();
  }

  Future<List<Todo>> getTodos() async {
    final response = await _client.get(Uri.parse('$_baseUrl/todos'));

    final jsonList = jsonDecode(response.body) as List;

    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }

  Future<List<User>> getUsers() async {
    final response = await _client.get(Uri.parse('$_baseUrl/todos'));

    final jsonList = jsonDecode(response.body) as List;

    return jsonList.map((e) => User.fromJson(e)).toList();
  }

  Future<List<Post>> getPosts() async {
    final response = await _client.get(Uri.parse('$_baseUrl/posts'));

    final jsonList = jsonDecode(response.body) as List;

    return jsonList.map((e) => Post.fromJson(e)).toList();
  }
}
