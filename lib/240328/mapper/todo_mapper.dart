import 'package:dart_cli_practice/240328/dto/Todo_dto.dart';

import '../model/todo.dart';

extension TodoDtoToTodo on TodoDto {
  Todo toTodo() {
    return Todo(
      title: title ?? '제목없음',
      completed: completed ?? false,
    );
  }
}

extension TodoToTodoDto on Todo {
  TodoDto toTodoDto() {
    return TodoDto(
      title: title,
    );
  }
}
