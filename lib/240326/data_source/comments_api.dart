import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/repository/comment_repository.dart';

import '../model/comment.dart';
import '../repository/comment_repository_implements.dart';

class CommentsApi {
  Future<List<Comment>> getComments(int postId) async {
    final response = await http.get(Uri.parse(
        'https://jsonplaceholder.typicode.com/comments?postId=$postId'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData.map((json) => Comment.fromJson(json)).toList();
    } else {
      throw Exception('Error: ${response.statusCode}');
    }
  }
}

void main() async {
  CommentRepository commentRepo = CommentsRepositoryImpl();
  final result = await commentRepo.getComments(5);
  print(result);
}
