class Post {
  final int id;
  final int userId;
  final String title;
  final String body;

  Post({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  Post.copyWith({
    required Post origin,
    int? id,
    int? userId,
    String? title,
    String? body,
  })  : id = id ?? origin.id,
        userId = userId ?? origin.userId,
        title = title ?? origin.title,
        body = body ?? origin.body;

  Post.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        userId = json['userId'],
        title = json['title'],
        body = json['body'];

  Map<String, dynamic> toJson() => {'id': id, 'userId': userId, 'title': title, 'body': body};

  @override
  String toString() {
    return 'Post{id: $id, userId: $userId, title: $title, body: $body}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Post &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          userId == other.userId &&
          title == other.title &&
          body == other.body;

  @override
  int get hashCode => id.hashCode ^ userId.hashCode ^ title.hashCode ^ body.hashCode;
}
