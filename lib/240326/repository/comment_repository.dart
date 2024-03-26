import '../data_source/comment_api.dart';
import '../model/comment.dart';

abstract interface class CommentRepository {
  Future<List<Comment>> getComments(int postId);
}

class CommentRepositoryImpl implements CommentRepository {
  final CommentsApi _api = CommentsApi();

  @override
  Future<List<Comment>> getComments(int postId) async {
    List<Comment> data = await _api.getComments();
    return data.where((e) => e.postId == postId).toList();
  }
}

void main() async {
  List<Comment> commentList = await CommentRepositoryImpl().getComments(3);
  print(commentList);
}
