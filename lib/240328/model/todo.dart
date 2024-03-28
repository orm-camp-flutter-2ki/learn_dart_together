// https://jsonplaceholder.typicode.com/todos/1
// {
// "title": "delectus aut autem",
// "completed": false
// }

// 데이터 클래스
class Todo {
  final String title;
  final bool completed;

  Todo({
    required this.title,
    required this.completed,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Todo &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          completed == other.completed;

  @override
  int get hashCode => title.hashCode ^ completed.hashCode;

  @override
  String toString() {
    return 'Todo{title: $title, completed: $completed}';
  }

  Todo copyWith({
    String? title,
    bool? completed,
  }) {
    return Todo(
      title: title ?? this.title,
      completed: completed ?? this.completed,
    );
  }
}
