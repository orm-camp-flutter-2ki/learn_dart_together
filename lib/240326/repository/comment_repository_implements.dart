import 'package:learn_dart_together/240326/data_source/comments_api.dart';

import '../model/comment.dart';
import 'comment_repository.dart';

class CommentsRepositoryImpl implements CommentRepository {
  final CommentsApi _api = CommentsApi();

  @override
  Future<List<Comment>> getComments(int postId) {
    return _api.getComments(postId);
  }
}
