import 'package:test/test.dart';
import 'package:learn_dart_together/240326/repository/comment/comment_repository_impl.dart';

void main() {
  group('CommentRepositoryImpl', () {
    test('getComments', () async {
      // Given
      final commentRepository = CommentRepositoryImpl();
      final postId = 1; // 테스트할 postId

      // When
      final comments = await commentRepository.getComments(postId);

      // Then
      // 예상되는 댓글 개수와 반환된 댓글 개수 비교
      expect(comments.length, greaterThan(0));

      // 모든 댓글의 postId가 올바른지 확인
      for (final comment in comments) {
        expect(comment.postId, postId);
      }
    });
  });
}
