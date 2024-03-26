import 'package:learn_dart_together/24_03_26/apis/comment_api.dart';
import 'package:learn_dart_together/24_03_26/model/comment.dart';
import 'package:learn_dart_together/24_03_26/repositories/comment_repository_impl.dart';
import 'package:test/test.dart';

import '../../24_03_25/fake_http_proxy.dart';

void main() {
  group('CommentRepositoryImpl 클래스', () {
    final CommentRepositoryImpl commentRepository =
        CommentRepositoryImpl(CommentApi(http: FakeHttpProxy()));
    group('getComments 메소드는', () {
      test('CommentApi.getComments 메소드를 호출한다', () async {
        // Given
        final expected = Comment(
          postId: 1,
          id: 1,
          name: 'id labore ex et quam laborum',
          email: 'Eliseo@gardner.biz',
          body: 'laudantium enim quasi est quidem magnam voluptate ipsam eos\n'
              'tempora quo necessitatibus\n'
              'dolor quam autem quasi\n'
              'reiciendis et nam sapiente accusantium',
        );
        // When
        final result = await commentRepository.getComments();

        // Then
        expect(result.first, expected);
      });
    });
  });
}
