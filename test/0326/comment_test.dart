import 'package:learn_dart_together/0326/data_source/comment_repository.dart';
import 'package:learn_dart_together/0326/data_source/comment_repository_impl.dart';
import 'package:learn_dart_together/0326/model/comment.dart';
import 'package:test/test.dart';

void main() {
  test('postId와 일치하는 모든 comment 요청', () async {
    CommentRepository commentRepository = CommentRepositoryImpl();
    List<Comment> comments = await commentRepository.getComments(1);

    expect(comments.length, 5);
  });
}