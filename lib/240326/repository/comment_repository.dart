import '../data_source/comments.dart';

abstract interface class CommentRepository {
  Future<List<Comment>> getComments(int postId);
}
