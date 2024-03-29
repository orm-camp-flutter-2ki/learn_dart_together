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
}
