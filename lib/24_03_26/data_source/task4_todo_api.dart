import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_26/model_class/task4_todo.dart';

class TodoApi {
  Future<List<Todo>> getTodos() async {
    final http.Response res =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    List jsonList = jsonDecode(res.body) as List;
    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }

  Future<List<Todo>> getCompletedTodos() async {
    final http.Response res =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    List jsonList = jsonDecode(res.body) as List;
    List<Todo> completedData = jsonList
        .map((e) => Todo.fromJson(e))
        .where((todo) => todo.completed == true)
        .toList();

    return completedData;
  }
}

Future<void> main() async {
  TodoApi test = TodoApi();
  final result = await test.getCompletedTodos();
  print(result);
}
