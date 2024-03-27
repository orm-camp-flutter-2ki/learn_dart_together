import 'package:learn_dart_together/orm_240326/00_data_repository/todo_repository.dart';
import 'package:learn_dart_together/orm_240326/00_data_repository/todo_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  group('todo 테스트', () {
    test('getTodos', () async {
      final TodoRepository todosTest = TodoRepositoryImpl();
      final result = await todosTest.getTodos();

      print(result);
    });
    test('getCompletedTodos', () async {
      final TodoRepository todoCompleted = TodoRepositoryImpl();
      final results = await todoCompleted.getCompletedTodos(true);
      print(results.length);
      // expect(results == Todo.completed, true);
      //  expect 코드를 어떻게 짜야하는지 잘 모르겠습니다.
    });
  });
}
