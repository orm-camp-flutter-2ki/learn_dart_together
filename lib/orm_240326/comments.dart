class Comments {
  int postId;
  int id;
  String name;
  String email;
  String body;

  Comments(this.postId, this.id, this.name, this.email, this.body);

  Map<String, dynamic> toJson() => {
        'postId': postId,
        'id': id,
        'name': name,
        'email': email,
        'body': body,
      };

  Comments.fromJson(Map<String, dynamic> json)
      : postId = json['postId'],
        id = json['id'],
        name = json['name'],
        email = json['email'],
        body = json['body'];

  Comments copyWith(
      {int? postId, int? id, String? name, String? email, String? body}) {
    return Comments(
      postId ?? this.postId,
      id ?? this.id,
      name ?? this.name,
      email ?? this.email,
      body ?? this.body,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Comments &&
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

  @override
  String toString() =>
      'Comments{postId: $postId, id: $id, name: $name, email: $email, body: $body}';
}
