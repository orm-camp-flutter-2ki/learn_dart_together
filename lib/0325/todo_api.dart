import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:learn_dart_together/0325/todo_data_class.dart';

class TodoApi {
// http를 사용하여 string 형태의 json을 list로...
  Future<List<Todo>> getTodos() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    // final json = jsonDecode(response.body).toString();

    final List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }

  Future<Todo> getTodo(int id) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));

    // response.body == Json String
    final Map<String, dynamic> json = jsonDecode(response.body);
    return Todo.fromJson(json);
  }
}
