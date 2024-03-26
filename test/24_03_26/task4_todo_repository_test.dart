import 'package:test/test.dart';
import 'package:learn_dart_together/24_03_26/model_class/task4_todo.dart';
import 'package:learn_dart_together/24_03_26/repository/task4_todo_repository.dart';

void main() {
  group('TodoRepositoryImpl', () {
    test('getTodos returns list of todos', () async {
      final repository = TodoRepositoryImpl();

      final todos = await repository.getTodos();

      expect(todos, isA<List<Todo>>());
    });

    test('getCompletedTodos returns list of completed todos', () async {
      final repository = TodoRepositoryImpl();

      final completedTodos = await repository.getCompletedTodos();

      expect(completedTodos, isA<List<Todo>>());
      expect(completedTodos.every((todo) => todo.completed), isTrue);
    });
  });
}
