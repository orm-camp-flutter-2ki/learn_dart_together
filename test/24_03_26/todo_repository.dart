import 'package:learn_dart_together/24_03_26/model/dt_todo.dart';
import 'package:learn_dart_together/24_03_26/repository/todo_repository.dart';
import 'package:test/test.dart';

void main() {
  group('TodoRepository 인터페이스의', () {
    group('구현체 TodoRepositoryImpl 클래스의', () {
      // Future<List<Todo>> getTodos() async
      test('getTodos()는 서버에 요청한 json을 List<Todo>으로 반환한다.', () async {
        // Given
        final TodoRepository repository = TodoRepositoryImpl();
        final expected = Todo(
            userId: 1, id: 1, title: 'delectus aut autem', completed: false);

        // When
        final todos = await repository.getTodos();

        // Then
        expect(todos[0] == expected, true);
      });

      // Future<List<Todo>> getCompletedTodos() async
      test('getCompletedTodos()는 서버에 요청한 json중, "completed"의 값이 true인 데이터만 List<Todo>으로 반환한다.', () async {
        final repository = TodoRepositoryImpl();
        final expected = Todo(
            userId: 1, id: 4, title: 'et porro tempora', completed: true);

        // When
        final todos = await repository.getCompletedTodos();

        // Then
        expect(todos[0] == expected, true);
      });
    });
  });
}
