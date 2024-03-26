import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/comment.dart';

class CommentRepository {
  Future<List<Comment>> getComments(postId) async {
    final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/comments/$postId'));

    final jsonList = jsonDecode(response.body) as List;

    return jsonList.map((e) => Comment.fromJson(e)).toList();
  }
}

void main() async {
  final commentRepository = CommentRepository();
  final List<Comment> comments = await commentRepository.getComments(1);
  print(comments);
}
