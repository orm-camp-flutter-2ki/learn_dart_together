import 'package:learn_dart_together/24_03_26/data_source/task1_comment_api.dart';
import 'package:learn_dart_together/24_03_26/model_class/task1_comment.dart';
import '../interfaces/task1_comment_repository_interface.dart';

class CommentRepositoryImpl implements CommentRepository {
  final CommentApi _api = CommentApi();

  @override
  Future<List<Comment>> getComment(int postId) async {
    return _api.getComments(postId);
  }
}

Future<void> main() async {
  final commentRepository = CommentRepositoryImpl();
  final comment = await commentRepository.getComment(1);
  print(comment);
}
