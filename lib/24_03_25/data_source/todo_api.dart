import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_25/data_source/todo.dart';

// DataSource
class TodoApi {
  Future<List<Todo>> getTodos() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
// response.body == Json String
    List jsonList = jsonDecode(response.body);

    return jsonList.map((e) => Todo.fromJson(e)).toList(); // Todo 형으로 받기
  }

  Future<Todo> getTodo(int id) async {
// try catch 해야
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
// response.body == Json String
    final Map<String, dynamic> json = jsonDecode(response.body);
    return Todo.fromJson(json);
  }
}
