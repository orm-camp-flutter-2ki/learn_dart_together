import 'package:learn_dart_together/24_03_25/todo.dart';

/// 이 곳에서는 데이터를 가공한 후에 반환해준다.
/// 로직을 캡슐화 하는 곳.
/// 데이터 소스를 주는 쪽에서는 가공 없이 전달받고, 앱 내에서 필요한 기능을 위한 맞춤형 데이터를 만들기 위해서는 레포지토리에서 가공한다.
abstract interface class TodoRepository {
  Future<List<Todo>> getTodos();

  Future<List<Todo>> getCompletedTodos(bool isCompleted);
}
