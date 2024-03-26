import 'package:learn_dart_together/24_03_25/apis/todo_api.dart';
import 'package:learn_dart_together/24_03_25/models/todo.dart';
import 'package:learn_dart_together/24_03_26/repositories/todo_repository_impl.dart';
import 'package:test/test.dart';

import '../../24_03_25/fake_http_proxy.dart';

void main() {
  group('TodoRepositoryImpl 클래스', () {
    final TodoRepositoryImpl todoRepository =
        TodoRepositoryImpl(TodoApi(http: FakeHttpProxy()));
    group('getTodos 메소드는', () {
      test('todoApi.getTodos 메소드를 호출하고 List<Todo>를 반환한다.', () async {
        // Given
        const userId = 1;
        const id = 1;
        const title = 'delectus aut autem';
        const completed = false;
        Todo expected =
            Todo(userId: userId, id: id, title: title, completed: completed);

        // When
        final result = await todoRepository.getTodos();

        // Then
        expect(result.first, expected);
      });
    });

    group('getCompletedTodos 메소드는', () {
      test('todoApi.getTodos 메소드를 호출하고 completed가 true인 List<Todo>를 반환한다.', () async {
        // Given
        const userId = 1;
        const id = 4;
        const title = 'et porro tempora';
        const completed = true;
        Todo expected =
            Todo(userId: userId, id: id, title: title, completed: completed);

        // When
        final result = await todoRepository.getCompletedTodos();

        // Then
        expect(result.first, expected);
      });
    });
  });
}
