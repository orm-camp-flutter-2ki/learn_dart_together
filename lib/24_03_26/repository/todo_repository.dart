import 'package:learn_dart_together/24_03_26/model/dt_todo.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

abstract interface class TodoRepository {
  Future<List<Todo>> getTodos();

  Future<List<Todo>> getCompletedTodos();
}

class TodoRepositoryImpl implements TodoRepository {
  final baseUri = 'https://jsonplaceholder.typicode.com/todos';

  @override
  Future<List<Todo>> getCompletedTodos() async {
    final http.Response response = await http.get(Uri.parse(baseUri));

    List jsonList =
        (response.statusCode == 200) ? jsonDecode(response.body) : [];
    return jsonList
        .where((element) => element['completed'] == true)
        .map((e) => Todo.fromJson(e))
        .toList();
  }

  @override
  Future<List<Todo>> getTodos() async {
    final http.Response response = await http.get(Uri.parse(baseUri));

    List jsonList =
        (response.statusCode == 200) ? jsonDecode(response.body) : [];
    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }
}
