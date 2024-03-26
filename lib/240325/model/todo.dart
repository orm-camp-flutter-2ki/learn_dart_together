import 'dart:convert';

import 'package:http/http.dart' as http;

class Todo {
  final int id;
  final int userId;
  final String title;
  final bool completed;

  Todo(this.id, this.userId, this.title, this.completed);

  // 제이슨 인코딩
  Map<String, dynamic> toJson() =>
      {'id': id, 'userid': userId, 'title': title, 'completed': completed};

  // 제이슨 디코딩
  Todo.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        userId = json['userId'],
        title = json['title'],
        completed = json['completed'];

  // To String
  @override
  String toString() {
    return 'Todo{id: $id, userid: $userId, title: $title, completed: $completed}';
  }

  // ==
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Todo &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          userId == other.userId &&
          title == other.title &&
          completed == other.completed;

  // Get
  @override
  int get hashCode =>
      id.hashCode ^ userId.hashCode ^ title.hashCode ^ completed.hashCode;

// CopyWith
  Todo copyWith(int? id, int? userId, String? title) {
    return Todo(id ?? this.id, userId ?? this.userId, title ?? this.title, completed ?? this.completed);
  }
}
