import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240325/todo.dart';

class TodoApi {
  Future<List<Todo>> getTodos() async {
    try {
      final http.Response response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
      if (response.statusCode == 200) {
        List jsonList = jsonDecode(response.body);
        return jsonList.map((e) => Todo.fromJson(e)).toList();
      } else {
        // 빈걸주면 받는 쪽에서 확인
        return [];
      }
    } catch (e) {
      print('오류 $e');
      rethrow;
    }
  }

  Future<Todo> getTodo(int userId) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$userId'));

    final Map<String, dynamic> json = jsonDecode(response.body);
    return Todo.fromJson(json);
  }
}
