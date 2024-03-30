class PostDto {
  num? userId;
  num? id;
  String? title;
  String? body;

  PostDto({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  PostDto.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userId'] = userId;
    map['id'] = id;
    map['title'] = title;
    map['body'] = body;
    return map;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostDto &&
          runtimeType == other.runtimeType &&
          userId == other.userId &&
          id == other.id &&
          title == other.title &&
          body == other.body;

  @override
  int get hashCode =>
      userId.hashCode ^ id.hashCode ^ title.hashCode ^ body.hashCode;
}
