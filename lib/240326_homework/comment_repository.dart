import 'api/comment_api.dart';
import 'model/comment.dart';

void main() async {
  List<Comment> commentList = await CommentRepositoryImpl().getComments(4);
}

class CommentRepositoryImpl implements CommentRepository {
  final CommentApi _api = CommentApi();

  @override
  Future<List<Comment>> getComments(int postId) async {
    List<Comment> data = await _api.getComments();
    return data.where((element) => element.postId == postId).toList();
  }
}

abstract interface class CommentRepository {
  Future<List<Comment>> getComments(int postId);
}
