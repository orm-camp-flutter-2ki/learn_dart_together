import 'package:learn_dart_together/240329/data_source/post_api.dart';
import 'package:test/test.dart';

import '../../240329/dto/post_dto.dart';

void main() {
  test('post list test 1)', () async {
    final api = PostApi();
    final postList = await api.getPosts(page: 1, limit: 4);
    // print(postList);
    expect(postList.length, 4);
  });

  test('post search test 2', () async {
    final api = PostApi();
    final postList = await api.getPost(1);
    expect(postList.id, 1);
  });
  test('post page test 3', () async {
    final api = PostApi();
    final postList = await api.getPostAll();
    expect(postList.length, 100);
  });
  test('post delete test 4', () async {
    final api = PostApi();
    final delete = await api.deletePost(1);
    expect(delete, true);
  });
  test('post add test 5', () async {
    final api = PostApi();
    final expected = 101;
    final result = await api.addPost(post);
    expect(result, expected);
  });
  test('post update test 6', () async {
    final api = PostApi();
    final result = await api.updatePost(updatePost);
    expect(result, updatePost);
  });
}

PostDto updatePost = PostDto(
  userId: 1,
  id: 1,
  title: 'hello.',
  body: 'word.',
);

PostDto post = PostDto(
  userId: 1,
  id: 123,
  title: '제목입니다.',
  body: '내용입니다.',
);
