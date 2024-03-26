import '../data_source/comment.dart';

abstract interface class CommentRepository {
  Future<List<Comment>> getComments(int postId);
}
