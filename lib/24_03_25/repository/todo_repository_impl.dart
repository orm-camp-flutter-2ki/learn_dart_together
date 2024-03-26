import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_25/model/todo_model.dart';
import 'package:learn_dart_together/24_03_25/repository/interface/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository{
  @override
  Future<List<TodoModel>> getTodos() async {
    final jsonList = await _fetchTodo();
    return jsonList.map((e) => TodoModel.fromJson(e)).toList();
  }

  @override
  Future<TodoModel> getTodo(int id) async{
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));

    final Map<String, dynamic> json = jsonDecode(response.body);
    final TodoModel todoModel = TodoModel.fromJson(json);

    return todoModel;
  }

  @override
  Future<List<TodoModel>> getCompletedTodos() async {
    final jsonList = await _fetchTodo();
    return jsonList.where((element) => element['completed'] == true).map((e) => TodoModel.fromJson(e)).toList();
  }

  Future<List> _fetchTodo() async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    if (response.statusCode == 200) {
      return json.decode(response.body) as List;
    } else {
      throw Exception('통신 오류');
    }
  }
}

void main() async {
  final todos = await TodoRepositoryImpl().getCompletedTodos();
  print(todos);
}