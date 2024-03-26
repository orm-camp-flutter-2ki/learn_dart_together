import 'package:learn_dart_together/240325/model/todo.dart';
import 'package:learn_dart_together/240326/repository/todo_repository.dart';
import 'package:learn_dart_together/240326/respository_impl/todo_repo_impl.dart';
import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

void main() {
  group('(필수) 과제 4. Repository 작성 연습 4', () {
    // 다형성!
    TodoRepository todoRepository = TodoRepositoryImpl();

    test('Future<List<Todo>> getTodos() 생성', () async {
      // Given
      const firstUserId = 1;
      const firstId = 1;
      const firstTitle = 'delectus aut autem';
      const firstCompleted = false;

      // When
      final dataList = await todoRepository.getTodos();

      Todo expectedResult = Todo(
        id: firstUserId,
        userId: firstId,
        title: firstTitle,
        completed: firstCompleted,
      );

      // Then
      expect(dataList[0] == expectedResult, true);
    });

    test('Future<List<Todo>> getCompletedTodos() 생성', () async {
      // Given
      final allDataList = await todoRepository.getTodos();
      final firstUserId = allDataList[0].userId;
      final firstId = allDataList[0].id;
      final firstTitle = allDataList[0].title;
      final firstCompleted = allDataList[0].completed;

      // When
      final dataList = await todoRepository.getCompletedTodos();

      Todo expectedResult = Todo(
        id: firstUserId,
        userId: firstId,
        title: firstTitle,
        completed: firstCompleted,
      );

      // Then
      expect(dataList[0].completed == expectedResult.completed, false);
    });
  });
}
