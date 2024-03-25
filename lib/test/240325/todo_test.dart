import 'package:learn_dart_together/240325/dart_source/todo_api.dart';
import 'package:test/test.dart';

void main() {
  test('todo Test', () async {
    final todoApi = TodoApi();
    final todos = await todoApi.getTodos();
    print(todos);
    final todo = await todoApi.getTodo(1);
    print(todo);
  });
}
