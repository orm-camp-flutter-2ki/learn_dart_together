import '../model/comment.dart';

abstract interface class CommentRepository {
  Future<List<Comment>> getComments(
      int postId); //하고 싶은 기능을 다 여기다 때려넣는다. 날짜순을 최근껄 보여주고 싶다 여기다가 메서드 정의함.
}
