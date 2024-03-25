import 'package:learn_dart_together/datasource/todo_api.dart';
import 'package:learn_dart_together/datasource/dt_todo.dart';
import 'package:test/test.dart';

void main() {
  group('TodoApi 클래스의', () {
    // Future<Todo> getTodo(int id) async
    test('getTodo()는 서버에 요청한 json을 List<Todo>으로 반환한다.', () async {
      // Given
      final api = TodoApi();
      final todoId = 1;
      final expected =
          Todo(userId: 1, id: 1, title: 'delectus aut autem', completed: false);

      // When
      final todo = await api.getTodo(todoId);

      // Then
      expect(todo == expected, true);
    });

    // Future<List<Todo>> getTodos() async
    test('getTodo()는 서버에 요청한 json을 List<List<Todo>>으로 반환한다.', () async {
      final api = TodoApi();
      final expected =
          Todo(userId: 1, id: 1, title: 'delectus aut autem', completed: false);

      // When
      final todos = await api.getTodos();

      // Then
      expect(todos[0] == expected, true);
    });
  });
}
