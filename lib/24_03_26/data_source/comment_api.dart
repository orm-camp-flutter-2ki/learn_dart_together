import 'dart:convert';

import '../model/comment.dart';
import 'package:http/http.dart' as http;

class CommentApi {
  Future<List<Comment>> getComments() async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
    final jsonList = jsonDecode(response.body) as List;

    List<Comment> commentList = jsonList.map((e) => Comment.fromJson(e)).toList();
    return commentList;
  }
}