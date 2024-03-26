import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/repository/comment/comment.dart';
import 'package:learn_dart_together/240326/repository/comment/comment_repository.dart';

class CommentRepositoryImpl implements CommentRepository {
  final String _apiUrl = 'https://jsonplaceholder.typicode.com/comments';

  @override
  Future<List<Comment>> getComments(int postId) async {
    final response = await http.get(Uri.parse('$_apiUrl?postId=$postId'));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((e) => Comment.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load comments');
    }
  }

}

Future<void> main() async {
  CommentRepositoryImpl commentRepository = CommentRepositoryImpl();

  try {
    int postId = 1; // Change to desired postId
    List<Comment> comments = await commentRepository.getComments(postId);
    print('$postId의 댓글 목록:');
    comments.forEach((comment) => print(comment));
  } catch (e) {
    print('오류: $e');
  }
}