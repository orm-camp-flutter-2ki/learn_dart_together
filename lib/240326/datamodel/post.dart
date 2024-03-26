class Post {
  final String userId;
  final String id;
  final String title;
  final String body;

  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  @override
  String toString() {
    return 'Post{userId: $userId, id: $id, title: $title, body: $body}';
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
      userId.hashCode ^ id.hashCode ^ title.hashCode ^ body.hashCode;

  Post copyWith({
    String? userId,
    String? id,
    String? title,
    String? body,
    String? thumbnailUrl,
  }) {
    return Post(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  Map<String, dynamic> toJson() => {
        'Post': Post,
        'id': id,
        'title': title,
        'body': body,
      };

  Post.fromJson(Map<String, dynamic> json)
      : userId = json['userId'].toString(),
        id = json['id'].toString(),
        title = json['title'],
        body = json['body'];
}
