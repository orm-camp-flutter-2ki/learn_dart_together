import 'dart:convert';

import 'package:learn_dart_together/240329/data_source/post_api.dart';
import 'package:test/test.dart';

import '../../240329/dto/post_dto.dart';

void main() {
  test('post list test 1)', () async {
    final repository = PostApi();
    final postList = await repository.getPosts(page: 1, limit: 4);
    // print(postList);
    expect(postList.length, 4);
  });

  test('post search test 2', () async {
    final repository = PostApi();
    final postList = await repository.getPost(1);
    expect(postList.id, 1);
  });
  test('post page test 3', () async {
    final repository = PostApi();
    final postList = await repository.getPostAll();
    expect(postList.length, 100);
  });
  test('post delete test 4', () async {
    final repository = PostApi();
    final delete = await repository.deletePost(1);
    expect(delete, true);
  });
  test('post add test 5', () async {
    final repository = PostApi();
    final expected = 101;
    final postExpect = jsonEncode(post.toJson());
    // print(postExpect);
    final result = await repository.addPost(post);
    expect(result, expected);
  });
  test('post update test 6', () async {
    final repository = PostApi();
    final postExpect = jsonEncode(updatePost.toJson());

    // print(postExpect);
    final result = await repository.updatePost(updatePost);
    expect(result.toString(), postExpect.toString());
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
