class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo(this.userId, this.id, this.title, this.completed);

  Todo.fromJson(Map<String, dynamic> json) // 네임드 생성자
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
}
