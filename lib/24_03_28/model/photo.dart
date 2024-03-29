import 'package:learn_dart_together/24_03_28/enum/photo_type.dart';

class Photo {
  num id;
  PhotoType type;
  String title;
  String content;
  String url;
  String caption;
  DateTime createdAt;

  Photo({
    required this.id,
    required String type,
    required this.title,
    required this.content,
    required this.url,
    required this.caption,
    required this.createdAt,
  }) : type = PhotoType.stringToPhotoType(type);

  @override
  String toString() {
    return 'Photo{id: $id, type: ${type.value}, title: $title, content: $content, url: $url, caption: $caption, createdAt: $createdAt}';
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
          url == other.url &&
          caption == other.caption &&
          createdAt == other.createdAt;

  @override
  int get hashCode =>
      id.hashCode ^
      type.hashCode ^
      title.hashCode ^
      content.hashCode ^
      url.hashCode ^
      caption.hashCode ^
      createdAt.hashCode;
}
