import 'package:learn_dart_together/data_source/todo_api.dart';

class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo(this.userId, this.id, this.title, this.completed); //copyWith

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

  //디코딩 함수: fromJson JSON 형식의 문자열을 객체나 데이터 구조로 역직렬화하는 기능
  Todo.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        completed = json['completed'];

  //toJson 데이터를 JSON 형식의 문자열로 직렬화(Serialization)하는 기능
  Map<String, dynamic> toJson() => {
        'userId': userId,
        'id': id,
        'title': title,
        'completed': completed,
      };

  //동등성 비교
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Todo &&
          runtimeType == other.runtimeType &&
          userId == other.userId &&
          id == other.id &&
          title == other.title &&
          completed == other.completed;

  //hashCode
  @override
  int get hashCode =>
      userId.hashCode ^ id.hashCode ^ title.hashCode ^ completed.hashCode;

  @override
  String toString() {
    return 'Todo{userId: $userId, id: $id, title: $title, completed: $completed}';
  }
}

void main() async {
  List<Todo> todoData = await TodoApi().getTodos();
  print(todoData);
}
