import 'package:learn_dart_together/240325/data_source/todo_api.dart';
import 'package:learn_dart_together/240325/model/todo.dart';
import 'package:learn_dart_together/240326/repository/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  TodoApi todoApi = TodoApi();

  @override
  Future<List<Todo>> getTodos() async {
    String uri = 'https://jsonplaceholder.typicode.com/todos';
    final dataList = await todoApi.listToListTodo(uri);
    return dataList;
  }

  @override
  Future<List<Todo>> getCompletedTodos() async {
    final dataList = await todoApi.getCompletedTodos();
    final results =
        dataList.where((element) => element.completed == true).toList();
    return results;
  }
}
