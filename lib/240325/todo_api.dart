import 'dart:convert';

import 'package:learn_dart_together/240325/http_service.dart';
import 'package:learn_dart_together/240325/todo.dart';

class TodoApi {
  Future<Todo> getTodo(int i) async {
    final result = await HttpService().callGet('https://jsonplaceholder.typicode.com/todos/$i');
    final Map<String, dynamic> json = jsonDecode(result);
    return Todo.fromJson(json);
  }
}