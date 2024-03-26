import 'package:learn_dart_together/24_03_25/data_source/todo.dart';
import 'package:learn_dart_together/24_03_25/data_source/todo_api.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main(){

  test('api로 부터 Todo를 출력', () async{
    final expectedTodo = Todo(
      1,
      1,
      "delectus aut autem",
      false
    );

    final Todo todo = await TodoApi().getTodo(1);    //Todo

    expect(todo,expectedTodo);    // == , hashcode 비교
  });
  test('api로 부터 List<Todo>를 출력', () async{
    final expectedTodo = Todo(                     //마지막 번째 데이터
        10,
        200,
        "ipsam aperiam voluptates qui",
        false
    );

  final List<Todo> todoList = await TodoApi().getTodos();

  expect(todoList.last, expectedTodo);



  });
}