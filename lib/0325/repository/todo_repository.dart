import 'package:learn_dart_together/0325/model/todo_model.dart';
import 'package:learn_dart_together/0325/source/todo_api.dart';

abstract interface class TodoRepository {
  // 웹 서버에서 데이터를 가져오는 메서드
  Future<List<Todo>> getTodos();

  // 특정 id에 해당하는 데이터를 가져오는 메서드
  Future<List<Todo>> getTodo(int id);

  // completed = true인 데이터만 가져오는 메서드
  Future<List<Todo>> getCompletedTodos();
}
