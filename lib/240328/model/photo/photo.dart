enum PhotoType {
  Article,
  Image,
  Video,
  unknown
}

class Photo {
  int id;
  PhotoType type;
  String title;
  String url;
  String content;
  String caption;
  DateTime createdAt;

//<editor-fold desc="Data Methods">
  Photo({
    required this.id,
    required this.type,
    required this.title,
    required this.url,
    required this.content,
    required this.caption,
    required this.createdAt,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Photo &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          type == other.type &&
          title == other.title &&
          url == other.url &&
          content == other.content &&
          caption == other.caption &&
          createdAt == other.createdAt);

  @override
  int get hashCode =>
      id.hashCode ^
      type.hashCode ^
      title.hashCode ^
      url.hashCode ^
      content.hashCode ^
      caption.hashCode ^
      createdAt.hashCode;

  @override
  String toString() {
    return 'Photo{id: $id, type: $type, title: $title, url: $url, content: $content, caption: $caption, createdAt: $createdAt,}';
  }

  Photo copyWith({
    int? id,
    PhotoType? type,
    String? title,
    String? url,
    String? content,
    String? caption,
    DateTime? createdAt,
  }) {
    return Photo(
      id: id ?? this.id,
      type: type ?? this.type,
      title: title ?? this.title,
      url: url ?? this.url,
      content: content ?? this.content,
      caption: caption ?? this.caption,
      createdAt: createdAt ?? this.createdAt,
    );
  }

//</editor-fold>
}