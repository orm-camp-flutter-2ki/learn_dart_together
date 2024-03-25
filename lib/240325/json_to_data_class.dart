import 'package:learn_dart_together/240325/data_source/todo_api.dart';

void main() async {
  TodoApi todoApi = TodoApi();

  // 과제 1
  todoApi.jsonToDataClass();

  // 과제 2
  todoApi.listToListTodo();
}


