import 'package:collection/collection.dart';
import 'package:learn_dart_together/240326/data_source/json_place_holder_api.dart';
import 'package:learn_dart_together/240326/model/comment.dart';
import 'package:test/test.dart';

import '../expected_results.dart';

void main() {
  group('JsonPlaceHolder', () {

    test('Comment', () async {
      final api = JsonPlaceHolderApi();
      final List<Comment> results = await api.getComments();
      final expected = expectedComments.map((e) => Comment.fromJson(e)).toList();

      expect(results.equals(expected), true);
    });
  });
}

