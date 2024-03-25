class Todo {
  num userId;
  num id;
  String title;
  bool completed;

  Todo(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  Todo.copyWith({
    required Todo origin,
    num? userId,
    num? id,
    String? title,
    bool? completed,
  })  : userId = userId ?? origin.userId,
        id = id ?? origin.id,
        title = title ?? origin.title,
        completed = completed ?? origin.completed;

  Todo.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        completed = json['completed'];


  Map<String, dynamic> toJson() => {
    'userId': userId,
    'id': id,
    'title': title,
    'completed': completed
  };

  @override
  String toString() {
    return 'Todo{userId: $userId, id: $id, title: $title, completed: $completed}';
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
