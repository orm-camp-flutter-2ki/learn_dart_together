class PhotoDto {
  dynamic id;
  String? type;
  String? title;
  String? content;
  String? createdAt;
  String? url;
  String? caption;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'title': title,
      'content': content,
      'createdAt': createdAt,
      'url': url,
      'caption': caption,
    };
  }

  factory PhotoDto.fromJson(Map<String, dynamic> map) {
    return PhotoDto(
      id: map['id'],
      type: map['type'] as String,
      title: map['title'] as String,
      content: map['content'] as String,
      createdAt: map['createdAt'] as String,
      url: map['url'] as String,
      caption: map['caption'] as String,
    );
  }

  PhotoDto({
    this.id,
    this.type,
    this.title,
    this.content,
    this.createdAt,
    this.url,
    this.caption,
  });
}
