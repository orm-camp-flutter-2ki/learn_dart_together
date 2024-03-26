import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/정다희/24_03_25/data_source/todo.dart';

class TodoApi {
  // repository 이름과 동일하게 짓나 ...?
  Future<List<Todo>> getTodos() async {
    final http.Response res =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));

    if (res.statusCode == 200) {
      final List resList = jsonDecode(res.body);
      return resList.map((e) => Todo.fromJson(e)).toList();
    } else {
      throw Exception('api 받다가 에러남');
    }
  }

  Future<List<Todo>> getCompletedTodos() async {
    final http.Response res =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));

    if (res.statusCode == 200) {
      final List resList = jsonDecode(res.body);
      return resList
          .where((element) => element["completed"] == true)
          .map((e) => Todo.fromJson(e))
          .toList();
    } else {
      throw Exception('api 받다가 에러남');
    }
  }
}
