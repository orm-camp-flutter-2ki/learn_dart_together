import '../datamodel/comment.dart';

abstract interface class CommentsRepository{
  Future<List<Comment>> getComments(int postId);
}