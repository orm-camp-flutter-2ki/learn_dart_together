import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/01_comments.dart';
import '01_comment_repository.dart';

void main() async {
  final comment = await CommentRepositoryImpl().getComments(5);
  print(comment);
}

class CommentRepositoryImpl implements CommentRepository{
  // 비동기 http통신
  @override
  Future<Comments> getComments(int postId) async {
    final http.Response response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/comments/$postId'));

    // Map형태로 데이터를 받아옴
    final Map<String, dynamic> json = jsonDecode(response.body);

    return Comments.fromJson(json);
  }
}
