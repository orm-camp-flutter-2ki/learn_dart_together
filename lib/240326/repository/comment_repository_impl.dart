


import '../data_source/comment_api.dart';
import '../model/comment.dart';
import 'comment_repository.dart';

class CommentRepositoryImpl implements CommentRepository {

  @override
  Future<List<Comment>> getComments(int postId) async {
    CommentApi commentApi = CommentApi();
    return commentApi.getComments();
  }
}