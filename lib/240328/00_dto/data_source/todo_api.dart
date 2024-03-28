import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dto/todo_dto.dart';

class TodoApi {
  Future<TodoDto> getTodo(int id) async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));

    final json = jsonDecode(response.body);

    return TodoDto.fromJson(json);
  }

  Future<List<TodoDto>> getTodos() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    final jsonList = jsonDecode(response.body) as List;

    return jsonList.map((e) => TodoDto.fromJson(e)).toList();
  }
}
