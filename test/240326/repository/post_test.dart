import 'package:test/test.dart';
import 'package:learn_dart_together/240326/repository/post/post_repository_impl.dart';

void main() {
  group('PostRepositoryImpl', () {
    test('getPosts with page: 1 and -1', () async {
      // Given
      final postRepository = PostRepositoryImpl();

      // When
      // page: 1일 때와 page: -1일 때의 결과 비교
      final pagedPosts1 = await postRepository.getPosts(page: 1, limit: 3);
      final pagedPostsMinus1 = await postRepository.getPosts(page: -1, limit: 3);

      // Then
      expect(pagedPosts1, equals(pagedPostsMinus1));
    });
  });
}