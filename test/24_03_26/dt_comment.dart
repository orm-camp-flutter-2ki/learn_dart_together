import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_26/model/dt_comment.dart';
import 'package:test/test.dart';

void main() {
  group('Comment 클래스의', () {
    test('fromJson()는 Json(Map)을 통해 Comment를 생성한다.', () async {
      // Given
      final expected = Comment(id: 27, email: 'abcd@gmail.com', name: '전종현', body: '좋은 글이네요', postId: 27);
      Map<String, dynamic> json = {
        'id': 27,
        'email': 'abcd@gmail.com',
        'name': '전종현',
        'body': '좋은 글이네요',
        'postId': 27
      };

      // When
      final result = Comment.fromJson(json);

      // Then
      expect(result == expected, true);
    });

    test('toJson()는 Comment로 Json(Map)을 생성한다.', () async {
      // Given
      final comment = Comment(id: 27, email: 'abcd@gmail.com', name: '전종현', body: '좋은 글이네요', postId: 27);
      Map<String, dynamic> expected = {
        'id': 27,
        'email': 'abcd@gmail.com',
        'name': '전종현',
        'body': '좋은 글이네요',
        'postId': 27
      };

      // When
      final result = comment.toJson();

      // Then
      expect(MapEquality().equals(result, expected), true);
    });

    test('copyWith()는 Comment를 통해 복사본 Comment를 생성한다.', () async {
      // Given
      final origin = Comment(id: 27, email: 'abcd@gmail.com', name: '전종현', body: '좋은 글이네요', postId: 27);
      // When
      final copied = Comment.copyWith(origin: origin, body: '더 분발하세요');

      // Then
      expect(copied == origin, false);
    });
  });
}
