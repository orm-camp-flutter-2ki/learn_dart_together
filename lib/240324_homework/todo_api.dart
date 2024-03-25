import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  TodoApi todo = TodoApi();
  await todo.getTodos();
  await todo.getTodo(1);
}

class TodoApi {
  Future<List<Todo>> getTodos() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    if (response.statusCode == 200) {
      List json = jsonDecode(response.body);
      //== final json = jsonDecode(response.body) as List;
      List<Todo> data = json.map((json) => Todo.fromJson(json)).toList();
      return data;
    } else {
      throw Exception('Response 에러');
    }
  }

  Future<Todo> getTodo(int id) async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      Todo data = Todo.fromJson(json);
      return data;
    } else {
      throw Exception('Response 에러');
    }
  }
}

class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo(this.userId, this.id, this.title, this.completed);

  Todo.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        completed = json['completed'];

  Map<String, dynamic> toJson() =>
      {'userId': userId, 'id': id, 'title': title, 'completed': completed};

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

  @override
  String toString() {
    return 'Todo{userId: $userId, id: $id, title: $title, completed: $completed}';
  }

  Todo copyWith({
    int? userId,
    int? id,
    String? title,
    bool? completed,
  }) {
    return Todo(
      userId ?? this.userId,
      id ?? this.id,
      title ?? this.title,
      completed ?? this.completed,
    );
  }
}
