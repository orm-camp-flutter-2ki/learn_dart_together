import '../dto/todo_dto.dart';
import '../model/todo.dart';

extension TodoDtoToTodo on TodoDto {
  Todo toTodo() {
    return Todo(
      title: title ?? '',
      isCompleted: completed ?? false,
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
