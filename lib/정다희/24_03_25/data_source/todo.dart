class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  const Todo(
    this.userId,
    this.id,
    this.title,
    this.completed,
  );

  @override
  String toString() {
    return 'Todo{ userId: $userId, id: $id, title:$title, completed: $completed}';
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

  // nullable 로 넣는 이유?
  // 원래있는 객체 복사하는것
  // 내가 어떤값은 넣고, 어떤값은 안넣고 싶은데 그때를 위해서 안넣었을 경우에는 기존의 값을 그대로 넣기 위함
  //값을 안넣으면 기존의 값이 들어감
  Todo copyWith(
    int? userId,
    int? id,
    String? title,
    bool? completed,
  ) {
    // null 값인 경우
    // this안쓰면 copyWith 안에있는걸 가져오기 때문에
    return Todo(userId ?? this.userId, id ?? this.id, title ?? this.title,
        completed ?? this.completed);
  }

  Todo.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        userId = json['userId'],
        completed = json['completed'],
        title = json['title'];

  Map<String, dynamic> toJson() =>
      {"id": id, "title": title, "userId": userId, "completed": completed};
}
