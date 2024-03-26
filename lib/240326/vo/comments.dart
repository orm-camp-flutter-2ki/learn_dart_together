// ignore_for_file: public_member_api_docs, sort_constructors_first

class Comments {
  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  Comments({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  Comments copyWith({
    int? postId,
    int? id,
    String? name,
    String? email,
    String? body,
  }) {
    return Comments(
      postId: postId ?? this.postId,
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      body: body ?? this.body,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'postId': postId,
      'id': id,
      'name': name,
      'email': email,
      'body': body,
    };
  }

  factory Comments.fromJson(Map<String, dynamic> map) {
    return Comments(
      postId: map['postId'] as int,
      id: map['id'] as int,
      name: map['name'] as String,
      email: map['email'] as String,
      body: map['body'] as String,
    );
  }

  @override
  String toString() {
    return 'Comments(postId: $postId, id: $id, name: $name, email: $email, body: $body)';
  }

  @override
  bool operator ==(covariant Comments other) {
    if (identical(this, other)) return true;

    return other.postId == postId && other.id == id && other.name == name && other.email == email && other.body == body;
  }

  @override
  int get hashCode {
    return postId.hashCode ^ id.hashCode ^ name.hashCode ^ email.hashCode ^ body.hashCode;
  }
}
