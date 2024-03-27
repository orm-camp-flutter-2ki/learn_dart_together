import 'dart:convert';

import 'package:dart_cli_practice/240326/model/comment.dart';
import 'package:http/http.dart' as http;

class CommentApi {
  Future<List<Comment>> getComments() async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));

    List jsonList = jsonDecode(response.body);

    return jsonList.map((e) => Comment.fromJson(e)).toList();
  }
}
