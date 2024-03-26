import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:learn_dart_together/240326/impl/post_repository_impl.dart';
import 'package:learn_dart_together/240326/model/post.dart';
import 'package:test/test.dart';

void main() {
  group('Post Test', () {
    final repository = PostRepositoryImpl();
    List json = jsonDecode(File('test/240326/resource/expected_post.json').readAsStringSync());
    final expected = json.map((e) => Post.fromJson(e)).toList();

    test('getPost() 비교', () async {
      final post = await repository.getPost(1);

      expect(post == expected.where((element) => element.id == 1).toList()[0], true);
    });

    test('getPosts() List 비교', () async {
      final posts = await repository.getPosts();

      expect(posts.equals(expected), true);
    });

    test('getPosts() 첫 번째 Index 비교', () async {
      final posts = await repository.getPosts();

      expect(posts[0] == expected[0], true);
      expect(posts[0].title == expected[0].title, true);
    });

    test('getPosts() page와 limit 테스트', () async {
      final posts = await repository.getPosts(page: 2, limit: 5);
      // 기대값 length = 5, 첫 id 6, 끝 id 10

      expect(posts.length == 5, true);
      expect(posts.first.id == 6 && posts.last.id == 10, true);
    });
  });
}