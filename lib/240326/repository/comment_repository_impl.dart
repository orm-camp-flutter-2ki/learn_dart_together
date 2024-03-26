import 'package:learn_dart_together/240326/data_source/comment.dart';
import 'package:learn_dart_together/240326/model/comment_api.dart';
import 'package:learn_dart_together/240326/repository/comment_repository.dart';

class CommentRepositoryImpl implements CommentRepository {
  @override
  Future<List<Comment>> getComments(int postId) async {
    CommentApi commentApi = CommentApi();
    final comments = await commentApi.getComments();
    final postIdComments = comments.where((e) => postId == e.postId).toList();

    return postIdComments;
  }
}
