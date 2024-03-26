import 'package:learn_dart_together/240326/data_source/comment_api.dart';
import 'package:learn_dart_together/240326/model/comment.dart';

abstract interface class CommentRepository {
  Future<List<Comment>> getComments();

  Future<Comment> getComment(int postId);
}

class CommentRepositoryImpl implements CommentRepository {
  final CommentApi _api = CommentApi();

  @override
  Future<List<Comment>> getComments() {
    return _api.getComments();
  }

  @override
  Future<Comment> getComment(int postId) {
    return _api.getComment(postId);
  }
}
