import 'package:learn_dart_together/24_03_26/repository/todo_repository.dart';
import 'package:learn_dart_together/24_03_26/repository/todo_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  TodoRepository todoRepo = TodoRepositoryImpl();
  test('Todo getTodos() test', () async {
    final result = await todoRepo.getTodos();
    print(result);
  });

  test('Todo getCompletedTodos() test', () async {
    final result = await todoRepo.getCompletedTodos();
    print(result);
  });
}
