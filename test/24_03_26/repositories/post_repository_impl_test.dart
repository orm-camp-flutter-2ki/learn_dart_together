import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_26/apis/post_api.dart';
import 'package:learn_dart_together/24_03_26/model/post.dart';
import 'package:learn_dart_together/24_03_26/repositories/post_repository_impl.dart';
import 'package:test/test.dart';

import '../../24_03_25/fake_http_proxy.dart';

void main() {
  group('PostRepositoryImpl 클래스', () {
    final PostRepositoryImpl postRepository =
        PostRepositoryImpl(PostApi(http: FakeHttpProxy()));
    group('getPost 메소드는', () {
      test('postApi.getPost 메소드를 호출하고 Post 객체를 반환한다.', () async {
        // Given
        const id = 1;

        // When
        final result = await postRepository.getPost(id);

        // Then
        expect(result.id, id);
      });
    });

    group('getPosts 메소드는', () {
      test('postApi.getPosts 메소드를 호출하고 List<Post>를 3개씩 잘라서 반환한다.', () async {
        // Given
        List<Post> expected = [
          Post(
              userId: 1,
              id: 1,
              title:
                  "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
              body:
                  "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\n"
                  "reprehenderit molestiae ut ut quas totam\n"
                  "nostrum rerum est autem sunt rem eveniet architecto"),
          Post(
              userId: 1,
              id: 2,
              title: "qui est esse",
              body:
                  "est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\n"
                  "fugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\n"
                  "qui aperiam non debitis possimus qui neque nisi nulla"),
          Post(
              userId: 1,
              id: 3,
              title:
                  "ea molestias quasi exercitationem repellat qui ipsa sit aut",
              body:
                  "et iusto sed quo iure\nvoluptatem occaecati omnis eligendi aut ad\n"
                  "voluptatem doloribus vel accusantium quis pariatur\n"
                  "molestiae porro eius odio et labore et velit aut")
        ];

        // When
        final result = await postRepository.getPosts(1);

        // Then
        expect(result.equals(expected), isTrue);
      });

      test('page를 연산해서 얻은 offset이 List<Post>의 길이보다 클 경우 빈 리스트를 반환한다.', () async {
        // Given
        int expectedSize = 0;

        // When
        final result = await postRepository.getPosts(35);

        // Then
        expect(result.length, expectedSize);
      });

      test('page를 연산해서 얻은 offset보다 List<Post>의 길이보다 크고 limit보다 작을경우 남은 리스트를 반환한다.', () async {
        // Given
        int expectedSize = 1;

        // When
        final result = await postRepository.getPosts(34);

        // Then
        expect(result.length, expectedSize);
      });
    });
  });
}
