enum MediaDataType {
  article('article'),
  image('image'),
  video('video'),
  unknown('unknown');

  final String value;

  const MediaDataType(this.value);

  factory MediaDataType.getType(String type) {
    return MediaDataType.values.firstWhere((e) => e.value == type,
        orElse: () => MediaDataType.unknown);
  }
}

class MediaData {
  final num id;
  final MediaDataType type;
  final String title;
  final String content;
  final DateTime createdAt;

//<editor-fold desc="Data Methods">
  const MediaData({
    required this.id,
    required this.type,
    required this.title,
    required this.content,
    required this.createdAt,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MediaData &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          type == other.type &&
          title == other.title &&
          content == other.content &&
          createdAt == other.createdAt);

  @override
  int get hashCode =>
      id.hashCode ^
      type.hashCode ^
      title.hashCode ^
      content.hashCode ^
      createdAt.hashCode;

  @override
  String toString() {
    return 'MediaData{ id: $id, type: $type, title: $title, content: $content, createdAt: $createdAt,}';
  }

  MediaData copyWith({
    num? id,
    MediaDataType? type,
    String? title,
    String? content,
    DateTime? createdAt,
  }) {
    return MediaData(
      id: id ?? this.id,
      type: type ?? this.type,
      title: title ?? this.title,
      content: content ?? this.content,
      createdAt: createdAt ?? this.createdAt,
    );
  }

//</editor-fold>
}
