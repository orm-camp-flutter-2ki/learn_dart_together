import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:learn_dart_together/240326/impl/comment_repository_impl.dart';
import 'package:learn_dart_together/240326/model/comment.dart';
import 'package:test/test.dart';

void main() {
  group('Comment Test', () {
    final repository = CommentRepositoryImpl();
    List json = jsonDecode(File('test/240326/resource/expected_comment.json').readAsStringSync());
    final expected = json.map((e) => Comment.fromJson(e)).toList();

    test('List 비교', () async {
      final comments = await repository.getComments(1);

      expect(comments.equals(expected), true);
    });

    test('첫 번째 Index 비교', () async {
      final comments = await repository.getComments(1);

      expect(comments[0] == expected[0], true);
      expect(comments[0].name == expected[0].name, true);
    });

    test('postId 확인', () async {
      final comments = await repository.getComments(1);

      comments.forEach((element) => expect(element.postId == 1, true));
    });
  });
}