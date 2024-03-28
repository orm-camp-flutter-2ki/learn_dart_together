import '../enum/enum_photo.dart';

class Photo {
  num id;
  PhotoEnum type;
  String url;
  String caption;
  DateTime createdAt;

//<editor-fold desc="Data Methods">
  Photo({
    required this.id,
    required this.type,
    required this.url,
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
          url == other.url &&
          caption == other.caption &&
          createdAt == other.createdAt);

  @override
  int get hashCode =>
      id.hashCode ^
      type.hashCode ^
      url.hashCode ^
      caption.hashCode ^
      createdAt.hashCode;

  @override
  String toString() {
    return 'Photo{' +
        ' id: $id,' +
        ' type: $type,' +
        ' url: $url,' +
        ' caption: $caption,' +
        ' createdAt: $createdAt,' +
        '}';
  }

  Photo copyWith({
    num? id,
    PhotoEnum? type,
    String? url,
    String? caption,
    DateTime? createdAt,
  }) {
    return Photo(
      id: id ?? this.id,
      type: type ?? this.type,
      url: url ?? this.url,
      caption: caption ?? this.caption,
      createdAt: createdAt ?? this.createdAt,
    );
  }

//</editor-fold>
}
