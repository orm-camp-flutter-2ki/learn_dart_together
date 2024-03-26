import 'package:learn_dart_together/24_03_26/model/dt_comment.dart';
import 'package:learn_dart_together/24_03_26/repository/comment_repository.dart';
import 'package:test/test.dart';

void main() {
  group('CommentRepository 인터페이스의', () {
    group('구현체 CommentRepositoryImpl 클래스의', () {
      // Future<List<Comment>> getComments(int postId) async
      test(
          'getComments(int postId)는 서버에 요청한 json중, "postId"가 일치하는 데이터만 List<Comment>으로 반환한다.',
          () async {
        // Given
        final CommentRepository repository = CommentRepositoryImpl();
        final expected = Comment(
            id: 1,
            postId: 1,
            name: 'id labore ex et quam laborum',
            email: 'Eliseo@gardner.biz',
            body:
                'laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium');

        // When
        final comments = await repository.getComments(1);

        // Then
        expect(comments[0] == expected, true);
      });
    });
  });
}
