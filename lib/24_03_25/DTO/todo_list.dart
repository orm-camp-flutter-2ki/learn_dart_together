import 'package:learn_dart_together/24_03_25/DTO/todo.dart';

class TodoList {
  final List<Todo> todoList;

  TodoList({required this.todoList});

  TodoList.fromJson(List json) :
      todoList = json.map((e) => Todo.fromJson(e)).toList();

  List toJson() => [
    todoList.map((e) => e.toJson())
  ];

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoList &&
          runtimeType == other.runtimeType &&
          todoList == other.todoList;

  @override
  int get hashCode => todoList.hashCode;

  @override
  String toString() {
    return 'TodoList{todoList: $todoList}';
  }

  TodoList copyWith({List<Todo>? todoList}) {
    return TodoList(todoList: todoList ?? this.todoList);
  }
}