import 'package:test/test.dart';

import '../../240325/todo.dart';
import '../../data_source/todo_api.dart';

void main() {
  test('todo test', () async {
    Future<Todo> todo = TodoApi().getTodo(1);
    print(todo);
  });
  test('todo test', () async {
    Future<List<Todo>> todo = TodoApi().getTodos();
    print(todo);
  });
}
