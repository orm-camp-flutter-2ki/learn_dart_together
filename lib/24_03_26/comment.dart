class Comment {
  final int postId;
  final int id;
  final String email;
  final String body;

  Comment(this.postId, this.id, this.email, this.body);

  Comment copyWith({
    int? postId,
    int? id,
    String? email,
    String? body,
  }) {
    return Comment(
      postId ?? this.postId,
      id ?? this.id,
      email ?? this.email,
      body ?? this.body,
    );
  }

  Comment.fromJson(Map<String, dynamic> json)
      : postId = json['postId'] as int,
        id = json['id'] as int,
        email = json['email'] as String,
        body = json['body'] as String;

  Map<String, dynamic> toJson() => {
        'postId': postId,
        'id': id,
        'email': email,
        'body': body,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Comment &&
          runtimeType == other.runtimeType &&
          postId == other.postId &&
          id == other.id &&
          email == other.email &&
          body == other.body;

  @override
  int get hashCode => postId.hashCode ^ id.hashCode ^ email.hashCode ^ body.hashCode;

  @override
  String toString() {
    return 'Comment{postId: $postId, id: $id, email: $email, body: $body}';
  }
}
