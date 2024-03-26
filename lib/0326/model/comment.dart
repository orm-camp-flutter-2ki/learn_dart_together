class Comment {
  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  const Comment(
    this.postId,
    this.id,
    this.name,
    this.email,
    this.body,
  );

  Comment.fromJson(Map<String, dynamic> json)
      : postId = json['postId'],
        id = json['id'],
        name = json['name'],
        email = json['email'],
        body = json['body'];

  @override
  String toString() =>
      'Comment{postId: $postId, id: $id, name: $name, email: $email, body: $body}';
}
