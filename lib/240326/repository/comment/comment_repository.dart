import 'package:learn_dart_together/240326/repository/comment/comment.dart';

abstract interface class CommentRepository {
  Future<List<Comment>> getComments(int postId);
}