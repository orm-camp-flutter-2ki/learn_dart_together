import 'dart:convert';

import 'package:dart_cli_practice/data_source/todo_api.dart';
import 'package:test/scaffolding.dart';

void main() {
  JsonEncoder encoder = JsonEncoder.withIndent('  ');
  TodoApi api = TodoApi();

  group('Todo api는', () {
    test('/todo/\$id  path로 특정 id의 todo를 fetch 한다.', () async {
      try {
        final todo = await api.getTodo(1);
        print(todo);
      } catch (e) {
        print(e);
      }
    });

    test('/todo path로 todo list를 fetch 한다.', () async {
      try {
        final todoList = await api.getTodos();
        print(todoList);
      } catch (e) {
        print(e);
      }
    });
  });
}
