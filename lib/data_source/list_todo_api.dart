import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  try {
    final todoApi = TodoApi();
    final todo = await todoApi.getTodos();
    print(todo);
  } catch (e) {
    print(e);
  }
}

class TodoApi {
  Future<List<Todo>> getTodos() async {
    final http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    if (response.statusCode == 200) {
      List json = jsonDecode(response.body);

      List<Todo> data = json.map((json) => Todo.fromJson(json)).toList();
      return data;
    } else {
      throw Exception('Response 에러');
    }

    // final jsonList = jsonDecode(response.body) as List;
    // return jsonList.map((e) => Todo.fromJson(e)).toList();
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

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'id': id,
        'title': title,
        'completed': completed,
      };

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
