import 'package:learn_dart_together/orm_240326/comments.dart';

abstract interface class CommentsRepository {
  Future<List<Comments>> getComments(int postId);
}
