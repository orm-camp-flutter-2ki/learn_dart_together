import 'package:learn_dart_together/240325/data_source/todo_api.dart';
import 'package:learn_dart_together/240325/todo.dart';
import 'package:learn_dart_together/240326/data_source/album_api.dart';
import 'package:learn_dart_together/240326/datamodel/album.dart';
import 'package:learn_dart_together/240326/repository/toDoRepository.dart';

class TodoRepositoryImpl implements TodoRepository {
  @override
  Future<List<Todo>> getCompletedTodos() async {
    TodoApi todoApi = TodoApi();
    final List<Todo> todos = await todoApi.getTodos();
    final List<Todo> completedtodos = todos.where((e)=> e.completed == true).toList();
    return completedtodos;
  }

  @override
  Future<List<Todo>> getTodos() async {
    TodoApi todoApi = TodoApi();
    return todoApi.getTodos();
  }
}
