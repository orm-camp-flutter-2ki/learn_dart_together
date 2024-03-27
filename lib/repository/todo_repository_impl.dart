import 'dart:convert';

import 'package:learn_dart_together/24_03_25/todo.dart';
import 'package:learn_dart_together/data_source/todo_api.dart';
import 'package:learn_dart_together/repository/todo_repository.dart';

/// 이 곳에서는 데이터를 가공한 후에 반환해준다.
/// 로직을 캡슐화 하는 곳.
/// 데이터 소스를 주는 쪽에서는 가공 없이 전달받고, 앱 내에서 필요한 기능을 위한 맞춤형 데이터를 만들기 위해서는 레포지토리에서 가공한다.
class TodoRepositoryImpl implements TodoRepository {
  final TodoApi _api = TodoApi();

  @override
  Future<List<Todo>> getTodos() async {
    final response = await _api.getTodos();
    List jsonList = jsonDecode(response);
    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }

  @override
  Future<List<Todo>> getCompletedTodos(bool isCompleted) async {
    final response = await _api.getTodos();
    List jsonList = jsonDecode(response);
    return jsonList.where((e) => e.completed == isCompleted).map((e) => Todo.fromJson(e)).toList();
  }
}
