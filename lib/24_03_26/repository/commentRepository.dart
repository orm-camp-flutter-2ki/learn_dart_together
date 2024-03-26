import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dataClass/comment.dart';

class CommentRepository {
  Future<List<Comment>> getComments(int postId) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
// response.body == Json String

    final jsonList2 = jsonDecode(response.body)
        .where((element) => element['postId'] == postId)
        .map((e) => Comment.fromJson(e))
        .toList();

    return jsonList2;
  }
}

void main() async {
  CommentRepository test = CommentRepository();
  final a = await test.getComments(1);
  print(a);
}
