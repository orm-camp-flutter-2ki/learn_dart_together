import 'package:learn_dart_together/24_03_26/apis/comment_api.dart';
import 'package:learn_dart_together/24_03_26/model/comment.dart';
import 'package:learn_dart_together/24_03_26/repositories/comment_repository.dart';

class CommentRepositoryImpl implements CommentRepository {
  final CommentApi _commentApi;

  CommentRepositoryImpl(this._commentApi);

  @override
  Future<List<Comment>> getComments() async {
    return await _commentApi.getComments();
  }
}
