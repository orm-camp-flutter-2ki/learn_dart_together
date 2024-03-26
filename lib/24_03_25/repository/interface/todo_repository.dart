import 'package:learn_dart_together/24_03_25/model/todo_model.dart';

abstract interface class TodoRepository {
  Future<List<TodoModel>> getTodos();
  Future<TodoModel> getTodo(int id);
  Future<List<TodoModel>> getCompletedTodos();
}