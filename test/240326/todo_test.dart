import 'package:learn_dart_together/240325/data_source/todo.dart';
import 'package:learn_dart_together/240326/data_source/todo_api.dart';
import 'package:test/test.dart';

main() {
  test('Todo test', () async {
    List<Todo> todos = await TodoApi().getCompletedTodos();
    expect(todos.map((e) => e.completed).contains(false), isFalse);
  });
}
