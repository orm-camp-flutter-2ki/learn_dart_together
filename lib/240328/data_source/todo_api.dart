import 'dart:convert';

import 'package:dart_cli_practice/240328/dto/Todo_dto.dart';
import 'package:http/http.dart' as http;

class TodoApi {
  Future<TodoDto> getTodo(int id) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));

    final json = jsonDecode(response.body);

    return TodoDto.fromJson(json);
  }

  Future<List<TodoDto>> getTodos() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    List jsonList = jsonDecode(response.body);

    return jsonList.map((e) => TodoDto.fromJson(e)).toList();
  }
}
