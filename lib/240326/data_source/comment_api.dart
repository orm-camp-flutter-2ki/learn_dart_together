import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/comment.dart';

class CommentsApi {
  Future<Comment> getComments(postId) async {
    final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/comments/@postId'));

    final json = jsonDecode(response.body);

    return Comment.fromJson(json);
  }
}
