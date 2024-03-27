import 'package:learn_dart_together/240325/data_source/todo_api.dart';
import 'package:learn_dart_together/240325/todo.dart';
import 'package:test/test.dart';

void main() {
  test('todo test', () async {
    //given
    Todo sol =
        Todo(userId: 1, id: 1, title: 'delectus aut autem', completed: false);

    //when
    Todo todo = await TodoApi().getTodo(1);

    //then
    expect(todo, sol);
    print(sol);
  });
  test('todos test', () async {
    //given
    Todo sol =
        Todo(userId: 1, id: 1, title: 'delectus aut autem', completed: false);

    //when
    List<Todo> todo = await TodoApi().getTodos();

    //then
    expect(todo[0], sol);

    print(todo);
  });
}
