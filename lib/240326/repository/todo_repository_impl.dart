import '../data_source/todo.dart';
import '../model/todo_api.dart';
import 'todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  @override
  Future<List<Todo>> getTodos() async {
    TodoApi todo = TodoApi();
    final todos = await todo.getTodos();
    return todos;
  }

  @override
  Future<List<Todo>> getCompletedTodos() async {
    TodoApi todo = TodoApi();
    final todolist = await todo.getTodos();
    return todolist.where((e) => e.completed == true).toList();
  }
}
