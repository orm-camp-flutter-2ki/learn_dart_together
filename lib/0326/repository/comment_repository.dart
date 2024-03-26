import 'package:learn_dart_together/0326/model/comment_model.dart';

abstract interface class CommentRepository {
  // http.get()을 사용하여 특정 ID에 해당하는 데이터를 가져오는 메서드
  Future<List<Comment>> getComments (int postId);

  // http.get()을 사용하여 웹 서버에서 데이터를 가져오는 메서드
  Future<List<Comment>> getCommentsList();
}
