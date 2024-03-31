import 'package:json_annotation/json_annotation.dart';

part 'post_model.g.dart';

@JsonSerializable(explicitToJson: true)
class PostModel {
  final int userId;
  final int id;
  final String title;

  @JsonKey(name: 'body')
  final String body;

  PostModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostModelToJson(this);

  @override
  String toString() {
    return 'userId: $userId, id: $id, title: $title, body: $body\n';
  }

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

  PostModel copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostModel(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

}
