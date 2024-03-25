import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  try {
    final todoApi = TodoApi();
    final todo = await todoApi.getTodo();
    print(todo);
  } catch (e) {
    print(e);
  }
}

class TodoApi {
  Future<List<Todo>> getTodo() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    final jsonList = jsonDecode(response.body) as List;
    return jsonList.map((e) => Todo.fromJson(e)).toList();
  }
}

class Todo {
  int userId;
  int id;
  String title;
  bool completed;

  Todo(this.userId, this.id, this.title, this.completed);

  Todo.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        completed = json['completed'];

  @override
  String toString() {
    return 'Todo{UserId: $userId, id: $id, title: $title, completed: $completed}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Todo &&
          runtimeType == other.runtimeType &&
          userId == other.userId &&
          id == other.id &&
          title == other.title &&
          completed == other.completed;

  @override
  int get hashCode =>
      userId.hashCode ^ id.hashCode ^ title.hashCode ^ completed.hashCode;
}
