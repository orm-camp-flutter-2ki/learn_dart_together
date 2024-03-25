import 'dart:convert';

import 'package:learn_dart_together/0325/todo_api.dart';
import 'package:learn_dart_together/0325/todo_data_class.dart';
import 'package:test/scaffolding.dart';
import 'package:test/expect.dart';

import '';

Future<void> main() async {
  test('200: 성공 400: 서버쪽 실패', () async {
    final TodoApi todoApi = TodoApi();

    final List<Todo> todos = await todoApi.getTodos();
    // final List<User> todos = await todoApi.getTodos();

    for (var todo in todos) {
      print('${todo.userId} ${todo.id} ${todo.title} ${todo.completed}');
    }

    expect(todos.length == 200, true);
    expect(todos.length == 400, false);
  });
}
