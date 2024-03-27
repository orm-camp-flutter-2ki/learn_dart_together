import 'package:learn_dart_together/240326/data_source/todo.dart';
import 'package:learn_dart_together/240326/repository/todo_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  test('TodoRepositoryImpl.getTodos 메소드를 호출한다', () async {
    // Given
    final sol =
        Todo(userId: 1, id: 1, title: "delectus aut autem", completed: false);
    // When
    final result = await TodoRepositoryImpl().getTodos();

    // Then
    expect(result.first, sol);
  });
  test('TodoRepositoryImpl.getCompletedTodos 메소드를 호출한다', () async {
    // Given
    final sol =
        Todo(userId: 1, id: 4, title: "et porro tempora", completed: true);
    // When
    final result = await TodoRepositoryImpl().getCompletedTodos();

    // Then
    expect(result.first, sol);
  });
}
