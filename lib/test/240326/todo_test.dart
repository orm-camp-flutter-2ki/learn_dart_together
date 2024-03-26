import 'package:learn_dart_together/240326/repository/todo_repository.dart';
import 'package:test/test.dart';

void main() {
  test('모든 Todo Test', () async {
    final repository = TodoRepositoryImpl();
    final todos = await repository.getTodos();
    expect(todos.length, 200);
  });
  test('completed가 ture인 경우 todo 출력', () async {
    final repository = TodoRepositoryImpl();
    final completed = await repository.getCompletedTodos();
    print(completed);
    expect(completed.first.completed, true);
    expect(completed.last.completed, true);
  });
}
