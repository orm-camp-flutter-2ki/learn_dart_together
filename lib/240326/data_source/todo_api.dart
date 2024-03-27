import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240325/data_source/todo.dart';

// DataSource
class TodoApi {
  Future<List<Todo>> getTodos() async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
// response.body == Json String
    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }

  Future<List<Todo>> getCompletedTodos() async {
    // try catch 해야
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    // response.body == Json String
    final List jsonList = jsonDecode(response.body);
    // completed 키가 있고, ture인 것 filter
    final filteredList = jsonList.where((map) => map['completed']);

    return filteredList.map((e) => Todo.fromJson(e)).toList();
  }
}

main() async {
  List<Todo> todos = await TodoApi().getCompletedTodos();
  print(todos);
}
