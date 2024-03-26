import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/repository/todo/todo.dart';
import 'package:learn_dart_together/240326/repository/todo/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final String _apiUrl =  'https://jsonplaceholder.typicode.com/todos';

  @override
  Future<List<Todo>> getTodos() async {
    final response = await http.get(Uri.parse(_apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((e) => Todo.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load todos');
    }
  }

  @override
  Future<List<Todo>> getCompletedTodos() async {
    final response = await http.get(Uri.parse(_apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      List<Todo> todos = jsonList.map((e) => Todo.fromJson(e)).toList();
      return todos.where((todo) => todo.completed).toList();
    } else {
      throw Exception('Failed to load completed todos');
    }
  }
}


Future<void> main() async {
  // TodoRepositoryImpl 인스턴스 생성
  TodoRepositoryImpl todoRepository = TodoRepositoryImpl();

  try {
    // 모든 할 일 목록 가져오기
    List<Todo> todos = await todoRepository.getTodos();
    print('전체 할 일 목록:');
    todos.forEach((todo) => print(todo));

    // 완료된 할 일 목록 가져오기
    List<Todo> completedTodos = await todoRepository.getCompletedTodos();
    print('\n완료된 할 일 목록:');
    completedTodos.forEach((todo) => print(todo));
  } catch (e) {
    print('오류: $e');
  }
}