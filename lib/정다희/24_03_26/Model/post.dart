class Post {
  final int id;
  final int userId;
  final String title;
  final String body;

  const Post(this.userId, this.id, this.title, this.body);

  @override
  String toString() {
    return 'Post{id: $id, userId: $userId, title: $title, body: $body}';
  }

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
      userId.hashCode ^ title.hashCode ^ body.hashCode ^ id.hashCode;

  Post.fromJson(Map<String, dynamic> json)
      : userId = json["userId"],
        id = json["id"],
        title = json["title"],
        body = json["body"];

  Map<String, dynamic> toJson() =>
      {"userId": userId, "id": id, "title": title, "body": body};

  Post withCopy(int? userId, int? id, String? title, String? body) {
    return Post(
      userId ?? this.userId,
      id ?? this.id,
      title ?? this.title,
      body ?? this.body,
    );
  }
}
