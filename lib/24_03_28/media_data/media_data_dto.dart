class MediaDataDto {
  MediaDataDto({
    this.id,
    this.type,
    this.title,
    this.content,
    this.createdAt,
  });

  MediaDataDto.fromJson(dynamic json) {
    id = json['id'];
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

  MediaDataDto copyWith({
    String? id,
    String? type,
    String? title,
    String? content,
    String? createdAt,
  }) =>
      MediaDataDto(
        id: id ?? this.id,
        type: type ?? this.type,
        title: title ?? this.title,
        content: content ?? this.content,
        createdAt: createdAt ?? this.createdAt,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['type'] = type;
    map['title'] = title;
    map['content'] = content;
    map['“created_at”'] = createdAt;
    return map;
  }
}
