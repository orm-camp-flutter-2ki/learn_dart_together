class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post(this.userId, this.id, this.title, this.body);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Post &&
          runtimeType == other.runtimeType &&
          userId == other.userId &&
          id == other.id &&
          title == other.title &&
          body == other.body;

  @override
  int get hashCode =>
      userId.hashCode ^ id.hashCode ^ title.hashCode ^ body.hashCode;

  @override
  String toString() {
    return 'Post{userId: $userId, id: $id, title: $title, body: $body}';
  }

  Post.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        body = json['body'];

  Map<String, dynamic> toJson() =>
      {'userId': userId, 'id': id, 'title': title, 'body': body};

  Post copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return Post(
      userId ?? this.userId,
      id ?? this.id,
      title ?? this.title,
      body ?? this.body,
    );
  }
}
