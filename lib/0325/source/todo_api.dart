import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:learn_dart_together/0325/model/todo_data_class.dart';

class TodoApi {
// http를 사용하여 string 형태의 json을 list로...
  Future<List<Todo>> getTodos() async {
    http.Response response;
    try {
      response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    } catch (error) {
      print('[Error]\n$error');
      return []; // // 예외가 발생하면 빈 리스트를 반환하거나 다른 처리할 수 있다.
    }

    final List jsonList = await jsonDecode(response.body);
    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }

  Future<Todo> getTodo(int id) async {
    http.Response response;
    try {
      response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
    } catch (error) {
      print('[Error]\n$error');
      rethrow;
    }

    final Map<String, dynamic> json = jsonDecode(response.body);
    return Todo.fromJson(json);
  }
}
