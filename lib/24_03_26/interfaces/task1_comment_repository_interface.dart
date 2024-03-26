import 'package:learn_dart_together/24_03_26/model_class/task1_comment.dart';

abstract interface class CommentRepository {
  Future<List<Comment>> getComment(int postId);
}
