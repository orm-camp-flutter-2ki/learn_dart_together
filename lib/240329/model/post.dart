class Post {
  num userId;
  num id;
  String title;
  String body;

  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  Post copyWith({
    num? userId,
    num? id,
    String? title,
    String? body,
  }) {
    return Post(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  @override
  String toString() {
    return 'post{userId: $userId, id: $id, title: $title, body: $body}';
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

  Map<String, dynamic> toJson() {
    return {
      'userId': this.userId,
      'id': this.id,
      'title': this.title,
      'body': this.body,
    };
  }

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'] as num,
      id: json['id'] as num,
      title: json['title'] as String,
      body: json['body'] as String,
    );
  }
}
