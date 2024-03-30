class Post {
  final int userId;
  final int id;
  final String title;
  final String body;
  const Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  @override
  String toString() {
    return 'Post(userId: $userId, id: $id, title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Post &&
        other.userId == userId &&
        other.id == id &&
        other.title == title &&
        other.body == body;
  }

  @override
  int get hashCode {
    return userId.hashCode ^ id.hashCode ^ title.hashCode ^ body.hashCode;
  }
}
