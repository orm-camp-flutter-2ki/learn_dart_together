import 'dart:convert';

import 'package:collection/collection.dart';

class PostDto {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostDto({this.userId, this.id, this.title, this.body});

  factory PostDto.fromMap(Map<String, dynamic> data) => PostDto(
        userId: data['userId'] as int?,
        id: data['id'] as int?,
        title: data['title'] as String?,
        body: data['body'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'id': id,
        'title': title,
        'body': body,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PostDto].
  factory PostDto.fromJson(String data) {
    return PostDto.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    if (other is! PostDto) return false;
    final mapEquals = const DeepCollectionEquality().equals;
    return mapEquals(other.toJson(), toJson());
  }

  @override
  int get hashCode => userId.hashCode ^ id.hashCode ^ title.hashCode ^ body.hashCode;
}
