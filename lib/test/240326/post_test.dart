import 'package:learn_dart_together/240326/repository/post_repository.dart';
import 'package:test/test.dart';

void main() {
  test('post id일치 하는지 확인', () async {
    final repository = PostRepositoryImpl();
    final post = await repository.getPost(1);
    print(post);
    expect(post.id, 1);
    expect(post.title,
        'sunt aut facere repellat provident occaecati excepturi optio reprehenderit');
  });
  test('post page Test', () async {
    final repository = PostRepositoryImpl();
    final post = await repository.getPostsPage(1, 3);
    expect(post.length, 3);
  });
}
