import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_26/Model/comment.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_26/repository.dart';
import 'package:test/test.dart';

void main() {
  group('comment 테스트', () {
    test('comment 테스트', () async {
      final result = await CommentApiImpl().getComments(1);
      expect(result.length, 5);
    });
  });
}

// 디버그모드 계산기를 찾아라.....
