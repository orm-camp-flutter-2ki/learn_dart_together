import '../../24_03_25/data_source/todo_api.dart';
import '../../24_03_25/todo.dart';
import '../repository/03_todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoApi _api = TodoApi();

  @override
  Future<List<Todo>> getTodos() async {
    return _api.getTodos();
  }

  @override
  Future<List<Todo>> getCompletedTodos() async {
    final List<Todo> list = await _api.getTodos();  //_api.getTodos()를 통해 전체 할 일 목록을 가져온 후
    return list.where((e) => e.completed).toList(); //e.completed가 true일 때만 true를 반환함 = e.completed == true).toList();

