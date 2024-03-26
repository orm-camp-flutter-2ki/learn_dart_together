import 'package:learn_dart_together/24_03_25/02_todo.dart';
import 'package:learn_dart_together/24_03_26/repository/04_todo_repository_Impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() async {
  test('과제 4. Repository 작성 연습 getTodos()', () async{
    //given
    final repository = TodoRepositoryImpl();
    final todoList = await repository.getTodos();

    //when
    final todoListLength = todoList.length;

    //then
    expect(todoListLength == 200, true);

  });

  test('과제 4. Repository 작성 연습 getCompletedTodos', () async {
    //given
    final repository = TodoRepositoryImpl();
    final todoCompletedList = await repository.getCompletedTodos(true);
    print(todoCompletedList);

    //when
    final isCompleted = todoCompletedList.contains(false);

    //then
    expect(isCompleted, false);

  });
}