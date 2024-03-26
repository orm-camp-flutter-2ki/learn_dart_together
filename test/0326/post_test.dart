import 'package:learn_dart_together/0326/data_source/post_repository.dart';
import 'package:learn_dart_together/0326/data_source/post_repository_impl.dart';
import 'package:learn_dart_together/0326/model/post.dart';
import 'package:test/test.dart';

void main() {
  PostRepository postRepository = PostRepositoryImpl();

  test('id와 일치하는 post 요청', () async {
    Post post = await postRepository.getPost(1);

    expect(post.id, 1);
    expect(post.title, 'sunt aut facere repellat provident occaecati excepturi optio reprehenderit');
  });

  test('post pagination', () async {
    List<Post> posts1 = await postRepository.getPosts(page: 1, limit: 3);
    expect(posts1.length, 3);

    List<Post> posts2 = await postRepository.getPosts(page: 2, limit: 25);
    expect(posts2.length, 50);

    List<Post> posts3 = await postRepository.getPosts(page: 3);
    expect(posts3.length, 3);

    List<Post> posts4 = await postRepository.getPosts(limit: 3);
    expect(posts4.length, 3);
  });

  test('모든 post 요청', () async {
    List<Post> allPosts = await postRepository.getAllPosts();

    expect(allPosts.length, 100);
  });
}