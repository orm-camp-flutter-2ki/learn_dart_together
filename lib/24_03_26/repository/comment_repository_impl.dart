import '../data_source/comment_api.dart';
import '../model/comment.dart';
import 'comment_repository.dart';

class CommentRepositoryImpl implements CommentRepository {
  final CommentApi _api = CommentApi();

  @override
  Future<List<Comment>> getComments(int postId) async {
    return await _api.getComments(postId);
  }
}
