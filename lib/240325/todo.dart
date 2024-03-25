import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class Todo {
  final String userId;
  final String id;
  final String title;
  final bool completed;

  Todo(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  @override
  String toString() {
    return 'Practice1{userId: $userId, id: $id, title: $title, completed: $completed}';
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

  Todo copyWith({
    String? userId,
    String? id,
    String? title,
    bool? completed,
  }) {
    return Todo(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      completed: completed ?? this.completed,
    );
  }

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'id': id,
        'title': title,
        'completed': completed,
      };

  Todo.fromJson(Map<String, dynamic> json)
      : userId = json['userId'].toString(),
        id = json['id'].toString(),
        title = json['title'],
        completed = json['completed'];
}
