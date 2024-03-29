class PhotoDto {

  final int? id;
  final String? type;
  final String? title;
  final String? url;
  final String? content;
  final String? createdAt;

  const PhotoDto({
    required this.id,
    required this.type,
    required this.title,
    required this.url,
    required this.content,
    required this.createdAt,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'title': title,
      'url': url,
      'content': content,
      'createdAt': createdAt,
    };
  }

  factory PhotoDto.fromJson(Map<String, dynamic> map) {
    return PhotoDto(
      id: int.tryParse(map['id'].toString()),
      type: map['type'],
      title: map['title'],
      url: map['url'],
      content: map['content'],
      createdAt: map['created_at'],
    );
  }
}