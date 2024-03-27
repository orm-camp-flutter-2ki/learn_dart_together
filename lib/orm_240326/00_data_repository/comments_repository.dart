import '../model/comments.dart';

abstract interface class CommentsRepository {
  Future<List<Comments>> getComments(int postId);
}
