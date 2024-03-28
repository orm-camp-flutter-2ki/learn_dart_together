import 'dart:convert';

import 'package:learn_dart_together/24_03_25/02_todo.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:http/http.dart' as http;

void main() async {
  test('과제2. Json List 를 List<Todo> 로 변환', () async {
    Future<List<Todo>> getTodos() async {
      final http.Response response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

      // response.body == Json String
      List jsonList = jsonDecode(response.body);
      return jsonList.map((e) => Todo.fromJson(e)).toList();
    }

    //given
    List<Todo> todoList = await getTodos();

    //when
    final todoListType = todoList.runtimeType;

    //then
    expect(todoListType == List<Todo>, true);
  });
}
