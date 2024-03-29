import 'package:learn_dart_together/0328/model/enum_type.dart';

class Photo {

  final int id;
  final EnumType type;
  final String title;
  final String url;
  final String content;
  final DateTime createdAt;

//<editor-fold desc="Data Methods">
  const Photo({
    required this.id,
    required this.type,
    required this.title,
    required this.url,
    required this.content,
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
          createdAt == other.createdAt);

  @override
  int get hashCode =>
      id.hashCode ^
      type.hashCode ^
      title.hashCode ^
      url.hashCode ^
      content.hashCode ^
      createdAt.hashCode;

  @override
  String toString() {
    return 'Photo{' +
        ' id: $id,' +
        ' type: $type,' +
        ' title: $title,' +
        ' url: $url,' +
        ' content: $content,' +
        ' createdAt: $createdAt,' +
        '}';
  }

  Photo copyWith({
    int? id,
    EnumType? type,
    String? title,
    String? url,
    String? content,
    DateTime? createdAt,
  }) {
    return Photo(
      id: id ?? this.id,
      type: type ?? this.type,
      title: title ?? this.title,
      url: url ?? this.url,
      content: content ?? this.content,
      createdAt: createdAt ?? this.createdAt,
    );
  }
//</editor-fold>
}