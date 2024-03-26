import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_26/repository/implements/post_repository_impl.dart';
import 'package:learn_dart_together/24_03_26/repository/interface/post_repository.dart';
import 'package:test/test.dart';

void main() {
  group('PostRepository 메서드 테스트', () {
    PostRepository repo = PostRepositoryImpl();

    test('getPost(int id) 메서드 테스트', () async {
      final post = await repo.getPost(10);

      expect(post.id, 10);
    });

    test('getPostsFiltered({required int page, required int limit}) 메서드 테스트',
        () async {
      final sliced = await repo.getPostsFiltered(page: 2, limit: 3);
      final givenId = sliced.map((e) => e.id);

      final expectedValue = [4, 5, 6];

      expect(DeepCollectionEquality().equals(givenId, expectedValue), true);
    });
  });
}
