import 'package:learn_dart_together/24_03_28/enum/photo_type.dart';

class Photo {
  String id;
  PhotoType type;
  String title;
  String content;
  DateTime createdAt;

  Photo({
    required this.id,
    required String type,
    required this.title,
    required this.content,
    required this.createdAt,
  }) : type = PhotoType.stringToPhotoType(type);

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
