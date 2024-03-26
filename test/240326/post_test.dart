import 'package:dart_cli_practice/240326/model/post.dart';
import 'package:dart_cli_practice/240326/repository/post_repository.dart';
import 'package:dart_cli_practice/240326/repository/post_repository_impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  final expectPost = Post(
    userId: 1,
    id: 1,
    title:
        'sunt aut facere repellat provident occaecati excepturi optio reprehenderit',
    body:
        'quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto',
  );

  group('PostRepositoryImpl 는', () {
    PostRepository postRepository = PostRepositoryImpl();

    test('getPost(id) 메소드로 id 에 해당하는 Photo를 가져온다.', () async {
      final actualPost = await postRepository.getPost(1);

      expect(actualPost, equals(expectPost));
    });

    test('인자가 주어지지 않은 getPosts() 메소드로 전체 Post 리스트를 가져온다.', () async {
      final expectedListLength = 100;

      final actualPost = await postRepository.getPosts();

      expect(actualPost.length, equals(expectedListLength));
    });

    test('getPosts(page, limit) 메소드로 특정 페이지의 리스트를 가져온다.', () async {
      final List<Post> expectPostList = [
        Post(
          userId: 1,
          id: 1,
          title:
              'sunt aut facere repellat provident occaecati excepturi optio reprehenderit',
          body:
              'quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto',
        ),
        Post(
          userId: 1,
          id: 2,
          title: 'qui est esse',
          body:
              'est rerum tempore vitae\nsequi sint nihil reprehenderit dolor beatae ea dolores neque\nfugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis\nqui aperiam non debitis possimus qui neque nisi nulla',
        ),
        Post(
          userId: 1,
          id: 3,
          title: 'ea molestias quasi exercitationem repellat qui ipsa sit aut',
          body:
              'et iusto sed quo iure\nvoluptatem occaecati omnis eligendi aut ad\nvoluptatem doloribus vel accusantium quis pariatur\nmolestiae porro eius odio et labore et velit aut',
        ),
      ];

      final page = 1;
      final limit = 3;
      final actualPostList =
          await postRepository.getPosts(page: page, limit: limit);

      expect(actualPostList, equals(expectPostList));
    });
  });
}
