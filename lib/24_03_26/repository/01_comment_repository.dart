import 'package:learn_dart_together/24_03_26/model/01_comments.dart';

abstract interface class CommentRepository {
  Future<Comments> getComments(int postId);

}