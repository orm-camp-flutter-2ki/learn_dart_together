import 'package:dart_cli_practice/240326/data_source/comment_api.dart';
import 'package:dart_cli_practice/240326/model/comment.dart';
import 'package:dart_cli_practice/240326/repository/comment_repository.dart';

class CommentRepositoryImpl implements CommentRepository {
  final api = CommentApi();

  @override
  Future<List<Comment>> getComments(int postId) async {
    final users = await api.getComments();

    return users.where((e) => e.postId == postId).toList();
  }
}
