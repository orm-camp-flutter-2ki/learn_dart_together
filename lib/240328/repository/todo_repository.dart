import 'package:dart_cli_practice/240328/mapper/todo_mapper.dart';

import '../data_source/todo_api.dart';
import '../model/todo.dart';

class TodoRepository {
  final TodoApi _api;

  TodoRepository(this._api);

  Future<Todo> findTodo() async {
    final todoDto = await _api.getTodo(1);

    return todoDto.toTodo();
  }

  Future<List<Todo>> findTodos() async {
    final todoDtoList = await _api.getTodos();
    return todoDtoList
        .where((e) => e.title != null)
        .map((dto) => dto.toTodo())
        .toList();
  }
}
