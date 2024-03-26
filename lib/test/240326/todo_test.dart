import 'package:learn_dart_together/240326/repository/todo_repository.dart';
import 'package:test/test.dart';

void main() {
  test('Todo Test', () async {
    final repository = TodoRepositoryImpl();
    final completed = await repository.getCompletedTodos();
    print(completed);
  });
}
