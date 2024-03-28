class Photo {
  final num id;
  final String type;
  final String title;
  final String url;
  final String caption;
  final String content;
  final DateTime createdAt;

  const Photo({
    required this.id,
    required this.type,
    required this.title,
    required this.url,
    required this.caption,
    required this.content,
    required this.createdAt,
  });

  @override
  String toString() {
    return 'Photo{id: $id, type: $type, title: $title, url: $url, caption: $caption, content: $content, createdAt: $createdAt}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Photo &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          type == other.type &&
          title == other.title &&
          url == other.url &&
          caption == other.caption &&
          content == other.content &&
          createdAt == other.createdAt;

  @override
  int get hashCode =>
      id.hashCode ^
      type.hashCode ^
      title.hashCode ^
      url.hashCode ^
      caption.hashCode ^
      content.hashCode ^
      createdAt.hashCode;
}

enum photoType { article, image, video, unknown }
