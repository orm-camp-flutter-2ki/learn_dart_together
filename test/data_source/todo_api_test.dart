import 'package:learn_dart_together/24_03_25/01_todo.dart';
import 'package:learn_dart_together/data_source/todo_api.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('단일 todo 테스트', () async {
    final TodoApi todoApi = TodoApi();
    final Todo todo = await todoApi.getTodo(1);
    print(todo);
  });

  test('todo list 테스트', () async {
    final TodoApi todoApi = TodoApi();
    final List<Todo> todos = await todoApi.getTodos();
    for (Todo todo in todos) {
      print('${todo.toJson()}');
    }
  });
}
