import 'package:learn_dart_together/24_03_26/comment.dart';

abstract interface class CommentRepository {
  Future<List<Comment>> getCommentsByPostId(int postId);
}
