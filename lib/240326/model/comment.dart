import 'package:http/http.dart';

class Comment {
  final postId;
  final id;
  final name;
  final email;
  final body;

  Comment(
      {required this.postId,
      required this.id,
      required this.name,
      required this.email,
      required this.body});

  @override
  String toString() {
    return 'Repository{postId: $postId, id: $id, name: $name, email: $email, body: $body}';
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

  Comment copyWith ({
    int? postId,
    int? id,
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
  : postId = json['postId'],
    id = json['id'],
    name = json['name'],
    email = json['email'],
    body = json['body'];


}

