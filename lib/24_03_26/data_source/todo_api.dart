import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../24_03_25/todo.dart';

class TodoApi {
  Future<List<Todo>> GetTodos() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }
}
