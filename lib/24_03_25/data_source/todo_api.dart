import 'dart:convert';

import 'package:learn_dart_together/24_03_25/todos/todo.dart';
import 'package:http/http.dart' as http;

class TodoApi {
  final url = 'https://jsonplaceholder.typicode.com/todos';

  Future<List<Todo>> getTodos() async {
    final http.Response response = await http.get(Uri.parse(url));

    // response.body == json String

    List<dynamic> jsonList = jsonDecode(response.body);

    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }

  Future<Todo> getTodo(int id) async {
    try {
      final http.Response response = await http.get(Uri.parse('$url/$id'));

      // responsse.body == json String
      final Map<String, dynamic> json = jsonDecode(response.body);

      return Todo.fromJson(json);
    } catch (err) {
      print('데이터를 가져오는 데 실패했습니다.\nerror : $err');

      return Future.error(err);
    }
  }
}
