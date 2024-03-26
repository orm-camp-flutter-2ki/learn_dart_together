class Comment {
  final String postId;
  final String id;
  final String name;
  final String email;
  final String body;

  Comment({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,

  });
  @override
  String toString() {
    return 'Comments{postId: $postId, id: $id, name: $name, email: $email, body: $body}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Comment &&
              runtimeType == other.runtimeType &&
              postId == other.postId &&
              id == other.id &&
              name == other.name &&
              email == other.email &&
              body == other.body;

  @override
  int get hashCode =>
      postId.hashCode ^
      id.hashCode ^
      name.hashCode ^
      email.hashCode ^
      body.hashCode;

  Comment copyWith({
    String? postId,
    String? id,
    String? name,
    String? email,
    String? body,
  }) {
    return Comment(
      postId: postId ?? this.postId,
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      body: body ?? this.body,
    );
  }

  Map<String, dynamic> toJson() => {
    'postId': postId,
    'id': id,
    'name': name,
    'email': email,
    'body': body,
  };

  Comment.fromJson(Map<String, dynamic> json)
      : postId = json['postId'].toString(),
        id = json['id'].toString(),
        name = json['name'],
        email = json['email'],
        body = json['body'];
}