// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:http/http.dart';

class Comment {
  final int postID;
  final int id;
  final String name;
  final String email;
  final String body;

  Comment({
    required this.postID,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'postID': postID,
      'id': id,
      'name': name,
      'email': email,
      'body': body,
    };
  }

  Comment.fromJson(Map<String, dynamic> json)
      : postID = json['postId'],
        id = json['id'],
        name = json['name'],
        email = json['email'],
        body = json['body'];

  @override
  bool operator ==(covariant Comment other) {
    if (identical(this, other)) return true;

    return other.postID == postID &&
        other.id == id &&
        other.name == name &&
        other.email == email &&
        other.body == body;
  }

  @override
  int get hashCode {
    return postID.hashCode ^
        id.hashCode ^
        name.hashCode ^
        email.hashCode ^
        body.hashCode;
  }

  Comment copyWith({
    int? postID,
    int? id,
    String? name,
    String? email,
    String? body,
  }) {
    return Comment(
      postID: postID ?? this.postID,
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      body: body ?? this.body,
    );
  }

  @override
  String toString() {
    return 'Comment(postID: $postID, id: $id, name: $name, email: $email, body: $body)';
  }
}
