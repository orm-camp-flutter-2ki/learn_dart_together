import 'dart:convert';

import 'package:learn_dart_together/24_03_25/02_todo.dart';
import 'package:learn_dart_together/24_03_25/data_source/todo_api.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:http/http.dart' as http;

void main() async {
  test('과제1. 간단한 JSON 을 데이터 클래스로 변환', () async {
    //given
    Future<Todo> getTodo(int id) async {
      final http.Response response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
      final Map<String, dynamic> json = jsonDecode(response.body);

      return Todo.fromJson(json);
    }
    //when
    Todo todoId1 = await TodoApi().getTodo(1);
    Todo todoId2 = await TodoApi().getTodo(2);

    //then
    expect(todoId1 == todoId2, false);
  });
}
