import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/todo.dart';

class TodoApi {
  final String _url = 'https://jsonplaceholder.typicode.com/todos';

  Future<List<Todo>> getTodos() async {
    final http.Response response = await http.get(Uri.parse(_url));

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body);
      return jsonList.map((e) => Todo.fromJson(e)).toList();
    } else {
      throw Exception('응답없음');
    }
  }

  Future<List<Todo>> getCompletedTodos() async {
    final http.Response response = await http.get(Uri.parse(_url));

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body);
      List completedList = jsonList.where((e) => e['completed'] == true).toList();
      return completedList.map((e) => Todo.fromJson(e)).toList();
    } else {
      throw Exception('응답없음');
    }
  }
}
