import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/vo/comments.dart';

class CommentRepository {
  Future<Comments> getComments(int postId) async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/comments/$postId'));
    // response.body == Json String

    Map<String, dynamic> json = jsonDecode(response.body);
    return Comments.fromJson(json);
  }
}

void main() async {
  final repo = CommentRepository();
  final comment = await repo.getComments(1);
  print(comment.body);
}
