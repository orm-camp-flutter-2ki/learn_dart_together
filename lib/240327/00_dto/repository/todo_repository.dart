import 'package:learn_dart_together/240327/00_dto/mapper/todo_mapper.dart';

import '../data_source/todo_api.dart';
import '../model/todo.dart';

class TodoRepository {
  final TodoApi _api;

  TodoRepository(this._api);

  Future<List<Todo>> getTodos() async {
    final todoDtoList = await _api.getTodos();
    return todoDtoList
        .where((e) => e.title != null)
        .map((dto) => dto.toTodo())
        .toList();
  }
}
