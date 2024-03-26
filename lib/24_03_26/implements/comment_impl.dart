import 'dart:html';
import '../data_source/comment_api.dart';
import '../repository/00_comment_repository.dart';


class CommentRepositoryImpl implements CommentRepository{
  final CommentApi _api = CommentApi();

  @override //인터페이스에서 상속한 getComments 메서드를 재정의(특정 게시물 ID에 해당하는 댓글 목록을 가져옴)
  Future<List<Comment>> getComments(int postId) async { //_api 객체의 getComments 메서드를 호출해 댓글 데이터를 가져옴.
    List<Comment> data = await _api.getComments();    // 이를 data 변수에 할당. await로 비동기 함수인 _api.getComments()의 실행이 완료될 때까지 기다림
    return data.where((e) => e.postId == postId).toList();
    // 가져온 댓글 데이터에서 postId와 일치하는 댓글만 필터링해 새로운 리스트로 반환
  }

}
