class Todo {
  final int userId;
  final String title;
  final bool completed;

  Todo(this.userId, this.title, this.completed);

  Map<String, dynamic> toJson() =>
      {'userId': userId, 'title': title, 'completed': completed};

  Todo.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        title = json['title'],
        completed = json['completed'];

  Todo copyWith(int? userId, String? title, bool? completed) {
    return Todo(userId ?? this.userId, title ?? this.title,
        completed ?? this.completed);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Todo &&
          runtimeType == other.runtimeType &&
          userId == other.userId &&
          title == other.title &&
          completed == other.completed;

  @override
  int get hashCode => userId.hashCode ^ title.hashCode ^ completed.hashCode;

  @override
  String toString() {
    return 'Todo{userId: $userId, title: $title, completed: $completed}';
  }
}
