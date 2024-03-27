import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/todo.dart';

class TodoApi {
  final urlBase = 'https://jsonplaceholder.typicode.com/todos';

  Future<List<Todo>> getTodos() async {
    final http.Response response = await http.get(Uri.parse(urlBase));

// response.body == Json .String

    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((e) => Todo.fromJson(e)).toList();
    } else {
      throw Exception('실패');
    }
  }

  Future<List<Todo>> getCompletedTodos(bool completed) async {
    final http.Response response =
        await http.get(Uri.parse('$urlBase?completed=$completed'));

// response.body == Json.String

    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((e) => Todo.fromJson(e)).toList();
    } else {
      throw Exception('실패');
    }
  }
}
