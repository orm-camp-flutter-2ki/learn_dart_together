import 'package:learn_dart_together/orm_240326/todo.dart';

abstract interface class TodoRepository {
  Future<List<Todo>> getTodos();

  Future<List<Todo>> getCompletedTodos(bool completed);
}
