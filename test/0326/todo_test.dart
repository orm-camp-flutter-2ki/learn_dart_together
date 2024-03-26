import 'package:learn_dart_together/0325/todo.dart';
import 'package:learn_dart_together/0326/data_source/todo_repository.dart';
import 'package:learn_dart_together/0326/data_source/todo_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  TodoRepository todoRepository = TodoRepositoryImpl();

  test('모든 todo 요청', () async {
    List<Todo> todos = await todoRepository.getTodos();
    
    expect(todos.length, 200);
  });

  test('completed가 true인 모든 todo 요청', () async {
    List<Todo> todos = await todoRepository.getCompletedTodos();

    expect(todos.first.userId, 1);
    expect(todos.first.id, 4);
    expect(todos.first.title, 'et porro tempora');
    expect(todos.first.completed, true);

    expect(todos.last.userId, 10);
    expect(todos.last.id, 199);
    expect(todos.last.title, 'numquam repellendus a magnam');
    expect(todos.last.completed, true);
  });
}