import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model_class/p1_model_class.dart';

class P1Api {
  Future<List<Comment>> getCommentsBy(int postId) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));

    List jsonList = await jsonDecode(response.body);
    List<Comment> filteredComments = jsonList
        .map((e) => Comment.fromJson(e))
        .where((comment) => comment.postId == postId)
        .toList();

    return filteredComments;
  }
}
