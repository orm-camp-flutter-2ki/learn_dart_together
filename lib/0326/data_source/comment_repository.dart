import 'package:learn_dart_together/0326/model/comment.dart';

abstract interface class CommentRepository {

  Future<List<Comment>> getComments(int postId);
}