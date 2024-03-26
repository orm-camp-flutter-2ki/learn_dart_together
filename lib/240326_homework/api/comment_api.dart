import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/comment.dart';

class CommentApi {
  Future<List<Comment>> getComments() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
    if (response.statusCode == 200) {
      List json = jsonDecode(response.body);
      List<Comment> data = json.map((json) => Comment.fromJson(json)).toList();
      return data;
    } else {
      throw Exception('Response 에러');
    }
  }
}
