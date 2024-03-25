import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_25/data_class/task1_todo.dart';

class TodoApi {
  Future<List> getTodos() async {
    try {
      final http.Response res =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

      if (res.statusCode == 200) {
        // 서버에서 정상적으로 데이터를 받아왔을 때
        List<dynamic> jsonData = jsonDecode(res.body);
        return jsonData;
      } else {
        // 상태 코드가 200이 아닌 경우
        throw Exception('Failed to get todos. Status code: ${res.statusCode}');
      }
    } catch (e) {
      // 네트워크 오류나 다른 예외가 발생한 경우
      throw Exception('Failed to get todos: $e');
    }
  }

  Future<Todo> getTodo(int id) async {
    final http.Response res =
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));

    final Map<String, dynamic> json = jsonDecode(res.body);
    return Todo.fromJson(json);
  }
}