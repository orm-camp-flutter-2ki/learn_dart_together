enum PhotoType {
  article(type: 'Article'),
  image(type: 'Image'),
  video(type: 'Video'),
  unknown(type: 'unknown');

  final String type;

  const PhotoType({required this.type});

  static PhotoType toPhotoType(String type) {
    return switch (type) {
      'article' => PhotoType.article,
      'image' => PhotoType.image,
      'video' => PhotoType.video,
      _ => PhotoType.unknown
    };
  }
}

class Photo {
  final int id;
  final PhotoType type;
  final String title;
  final String content;
  final DateTime createdAt;

  Photo({
    required this.id,
    required this.type,
    required this.title,
    required this.content,
    required this.createdAt,
  });

  Photo.copyWith({
    required Photo origin,
    int? id,
    PhotoType? type,
    String? title,
    String? content,
    DateTime? createdAt,
  })  : id = id ?? origin.id,
        type = type ?? origin.type,
        title = title ?? origin.title,
        content = content ?? origin.content,
        createdAt = createdAt ?? origin.createdAt;

  Photo.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        type = json['type'],
        title = json['title'],
        content = json['content'],
        createdAt = json['createdAt'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'type': type,
        'title': title,
        'content': content,
        'createdAt': createdAt
      };

  @override
  String toString() {
    return 'Photo{id: $id, type: $type, title: $title, content: $content, createdAt: $createdAt}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Photo &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          type == other.type &&
          title == other.title &&
          content == other.content &&
          createdAt == other.createdAt;

  @override
  int get hashCode =>
      id.hashCode ^
      type.hashCode ^
      title.hashCode ^
      content.hashCode ^
      createdAt.hashCode;
}
