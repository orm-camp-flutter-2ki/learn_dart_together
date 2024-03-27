import 'dart:convert';

import 'package:dart_cli_practice/240325/data_source/todo_api.dart';
import 'package:http/http.dart' as http;
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() async {
  JsonEncoder encoder = JsonEncoder.withIndent('  ');
  TodoApi api = TodoApi();

  final todoJsonString = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'))
      .then((response) => response.body);
  final todosJsonString = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/todos'))
      .then((response) => response.body);

  group('Todo api는', () {
    test('/todo/\$id  path로 특정 id의 todo를 fetch 한다.', () async {
      // 역직렬화하여 생성한 객체를 다시 직렬화하여 비교
      final todo = await api.getTodo(1);
      String actualJson = encoder.convert(todo);

      expect(actualJson, equals(todoJsonString));
    });

    test('/todo path로 todo list를 fetch 한다.', () async {
      // 역직렬화하여 생성한 객체를 다시 직렬화하여 비교
      final todoList = await api.getTodos();
      String actualJson = encoder.convert(todoList);

      expect(actualJson, equals(todosJsonString));
    });
  });
}
