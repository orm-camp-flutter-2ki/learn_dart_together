class PhotoDto {
  PhotoDto({
    this.id,
    this.type,
    this.title,
    this.content,
    this.createdAt,
  });

  PhotoDto.fromJson(dynamic json) {
    id = json['id'].toString();
    type = json['type'];
    title = json['title'];
    content = json['content'];
    createdAt = json['created_at'];
  }

  String? id;
  String? type;
  String? title;
  String? content;
  String? createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['type'] = type;
    map['title'] = title;
    map['content'] = content;
    map['created_at'] = createdAt;
    return map;
  }
}
