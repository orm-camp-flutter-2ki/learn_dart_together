// Model
class Todo {
  final String title;
  final bool isCompleted;

  const Todo({
    required this.title,
    required this.isCompleted,
  });

  // 4종 옵션
  Todo copyWith({
    String? title,
    bool? isCompleted,
  }) {
    return Todo(
      title: title ?? this.title,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Todo &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          isCompleted == other.isCompleted;

  @override
  int get hashCode => title.hashCode ^ isCompleted.hashCode;

  @override
  String toString() {
    return 'Todo{title: $title, isCompleted: $isCompleted}';
  }
}
