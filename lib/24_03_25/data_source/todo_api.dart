import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_25/model/todo_model.dart';

class TodoApi {
  Future<List<TodoModel>> getTodos() async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    List json = jsonDecode(response.body);
    final List<TodoModel> todosModel = json.map((e) => TodoModel.fromJson(e)).toList();

    return todosModel;
  }

  Future<TodoModel> getTodo(int id) async{
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));

    final Map<String, dynamic> json = jsonDecode(response.body);
    final TodoModel todoModel = TodoModel.fromJson(json);

    return todoModel;
  }
}