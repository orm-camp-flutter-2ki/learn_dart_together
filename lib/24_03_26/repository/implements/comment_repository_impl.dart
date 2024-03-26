import 'package:learn_dart_together/24_03_26/data_source/comment_api.dart';
import 'package:learn_dart_together/24_03_26/model/comment.dart';
import 'package:learn_dart_together/24_03_26/repository/interface/comment_repository.dart';

class CommentRepositoryImpl implements CommentRepository {
  final CommentApi _api = CommentApi();

  @override
  Future<List<Comment>> getComments(int postId) async {
    List<Comment> origin = await _api.getComments();
    return origin.where((e) => e.postId == postId).toList();
  }
}