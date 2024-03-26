import 'package:test/test.dart';
import 'package:learn_dart_together/240326/repository/todo/todo_repository_impl.dart';

void main() {
  group('TodoRepositoryImpl', () {
    test('getTodos and getCompletedTodos', () async {
      // Given
      final todoRepository = TodoRepositoryImpl();

      // When
      final todos = await todoRepository.getTodos();
      final completedTodos = await todoRepository.getCompletedTodos();

      // Then
      // 전체 할 일 목록과 완료된 할 일 목록의 길이 비교
      expect(todos.length, greaterThan(0));
      expect(completedTodos.length, lessThanOrEqualTo(todos.length));

      // 완료된 할 일 목록이 실제로 완료되었는지 확인
      for (final todo in completedTodos) {
        expect(todo.completed, true);
      }

      // 완료된 할 일 목록이 전체 할 일 목록에 포함되는지 확인
      for (final completedTodo in completedTodos) {
        expect(todos, contains(completedTodo));
      }
    });
  });
}
