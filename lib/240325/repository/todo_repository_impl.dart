


import 'package:untitled2/240325/data_source/todo_api.dart';
import 'package:untitled2/240325/repository/todo_repository.dart';

import '../model/todo.dart';

class TodoRepositoryImpl implements TodoRepository {

  @override
  Future<List<Todo>> getTodos() async{
    TodoApi todoApi = TodoApi();
    return todoApi.getTodos();
  }

  @override
  Future<List<Todo>> getCompletedTodos() async {
    TodoApi todoApi = TodoApi();
    final List<Todo> todos = await
        todoApi.getTodos();
    List<Todo> completedTodos =
        todos.where((e) => e.completed == true).toList();

    return completedTodos;
  }

}