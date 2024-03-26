import 'package:collection/collection.dart';
import 'package:learn_dart_together/datasource/dt_todo.dart';
import 'package:test/test.dart';

void main() {
  group('Todo 클래스의', () {
    test('fromJson()는 Json(Map)을 통해 Todo를 생성한다.', () async {
      // Given
      final expected = Todo(userId: 27, id: 1, title: '발표준비', completed: false);
      Map<String, dynamic> json = {
        'userId': 27,
        'id': 1,
        'title': '발표준비',
        'completed': false
      };

      // When
      final result = Todo.fromJson(json);

      // Then
      expect(result == expected, true);
    });

    test('toJson()는 Todo로 Json(Map)을 생성한다.', () async {
      // Given
      final todo = Todo(userId: 27, id: 1, title: '발표준비', completed: false);
      Map<String, dynamic> expected = {
        'userId': 27,
        'id': 1,
        'title': '발표준비',
        'completed': false
      };

      // When
      final result = todo.toJson();

      // Then
      expect(MapEquality().equals(result, expected), true);
    });

    test('copyWith()는 Todo를 통해 복사본 Todo를 생성한다.', () async {
      // Given
      final origin = Todo(userId: 27, id: 1, title: '발표준비', completed: false);
      // When
      final copied = Todo.copyWith(origin: origin, id: 25);

      // Then
      expect(copied == origin, false);
    });
  });
}
