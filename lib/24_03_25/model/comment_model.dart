class CommentModel {
  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  CommentModel({required this.postId, required this.id, required this.name, required this.email, required this.body});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CommentModel &&
          runtimeType == other.runtimeType &&
          postId == other.postId &&
          id == other.id &&
          name == other.name &&
          email == other.email &&
          body == other.body;

  @override
  int get hashCode => postId.hashCode ^ id.hashCode ^ name.hashCode ^ email.hashCode ^ body.hashCode;

  @override
  String toString() {
    return 'postId: $postId, id: $id, name: $name, email: $email, body: $body';
  }

  CommentModel copyWith({
    int? postId,
    int? id,
    String? name,
    String? email,
    String? body,
  }) {
    return CommentModel(
        postId: postId ?? this.postId,
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        body: body ?? this.body);
  }

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    return CommentModel(
      postId: json['postId'],
      id: json['id'],
      name: json['name'],
      email: json['email'],
      body: json['body'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'postId': postId,
      'id': id,
      'name': name,
      'email': email,
      'body': body,
    };
  }
}
