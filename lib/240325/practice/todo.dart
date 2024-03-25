// https://jsonplaceholder.typicode.com/todos/1
// {
// "userId": 1,
// "id": 1,
// "title": "delectus aut autem",
// "completed": false
// }

// 데이터 클래스
class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  Todo.fromJson(Map<String, dynamic> json)
      : this(
          userId: json['userId'] as int,
          id: json['id'] as int,
          title: json['title'] as String,
          completed: json['completed'] as bool,
        );

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'completed': completed,
    };
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

  @override
  String toString() {
    return 'Todo{userId: $userId, id: $id, title: $title, completed: $completed}';
  }

  // 모든 필드 값이 final 이므로 수정을 위해서 copyWith 메소드를 활용
  // todo를 교체하는 것이기 때문에, userId, id는 고정으로 두고 title, completed 값을 변경
  Todo copyWith({String? title, bool? completed}) {
    return Todo(
      userId: userId,
      id: id,
      title: title ?? this.title,
      completed: completed ?? this.completed,
    );
  }
}
