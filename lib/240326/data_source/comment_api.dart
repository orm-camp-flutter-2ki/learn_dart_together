import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/model/comment.dart';

class CommentApi {
  Future<List<Comment>> getComments() async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => Comment.fromJson(e)).toList();
  }

  Future<Comment> getComment(int postId) async {
    final http.Response response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/comments/$postId'));
    final Map<String, dynamic> json = jsonDecode(response.body);
    return Comment.fromJson(json);
  }
}
