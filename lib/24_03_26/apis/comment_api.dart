import 'dart:convert';

import 'package:learn_dart_together/24_03_25/http_proxy.dart';
import 'package:learn_dart_together/24_03_26/model/comment.dart';

class CommentApi {
  static const baseUrl = 'https://jsonplaceholder.typicode.com';
  final HttpProxy http;

  CommentApi({required this.http});

  Future<List<Comment>> getComments() async {
    final response = await http.get(Uri.parse('$baseUrl/comments'));
    return (jsonDecode(response.body) as List)
        .map((e) => Comment.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
