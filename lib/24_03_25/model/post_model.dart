class PostModel {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel({required this.userId, required this.id, required this.title, required this.body});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostModel &&
          runtimeType == other.runtimeType &&
          userId == other.userId &&
          id == other.id &&
          title == other.title &&
          body == other.body;

  @override
  int get hashCode => userId.hashCode ^ id.hashCode ^ title.hashCode ^ body.hashCode;

  @override
  String toString() {
    return 'PostModel{userId: $userId, id: $id, title: $title, body: $body}';
  }

  PostModel copyWith({
    int? userId,
    int? id,
    String? title,
    String? body
}) {
    return PostModel(userId: userId ?? this.userId, id: id ?? this.id, title: title ?? this.title, body: body ?? this.body);
  }

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(userId: json['userId'], id: json['id'], title: json['title'], body: json['body']);
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'body': body
    };
  }
}