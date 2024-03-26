import 'dart:math';
import 'package:learn_dart_together/24_03_25/DTO/todo.dart';
import 'package:learn_dart_together/24_03_26/repository/implements/todo_repository_impl.dart';
import 'package:learn_dart_together/24_03_26/repository/interface/todo_repository.dart';
import 'package:test/test.dart';

void main() {
  group('TodoRepository 메서드테스트', () {
    TodoRepository repo = TodoRepositoryImpl();

    test('getCompletedTodos 메서드 테스트', () async {
        final List<Todo> given = await repo.getCompletedTodos();
        final randomInt = Random().nextInt(10);

        expect(given[randomInt].completed, true);
    });
  });
}