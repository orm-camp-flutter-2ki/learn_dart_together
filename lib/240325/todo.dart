import 'dart:convert';

import 'package:http/http.dart' as http;
class Todo {
  final int id;
  final int userId;
  final String title;

  Todo(this.id, this.userId, this.title);

  // 제이슨 인코딩
  Map<String, dynamic> toJson() =>
      {'id': id, 'userid': userId,'title': title};


  // 제이슨 디코딩
  Todo.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        userId = json['userId'],
        title = json['title'];


  // To String
  @override
  String toString() {
    return 'Todo{id: $id, userid: $userId, title: $title}';
  }


  // ==
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Todo &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          userId == other.userId &&
          title == other.title;


  // Get
  @override
  int get hashCode => id.hashCode ^ userId.hashCode ^ title.hashCode;



// CopyWith
  Todo copyWith(int? id, int? userId, String? title) {
    return Todo(
      id ?? this.id,
      userId ?? this.userId,
      title ?? this.title
    );
  }
  }


