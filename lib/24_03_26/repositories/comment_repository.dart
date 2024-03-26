import 'package:learn_dart_together/24_03_26/model/comment.dart';

abstract interface class CommentRepository {
  Future<List<Comment>> getComments();
}
