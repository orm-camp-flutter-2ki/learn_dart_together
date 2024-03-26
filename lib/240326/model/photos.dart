import 'package:untitled2/240326/model/albums.dart';

class Photos {
  final albumId;
  final id;
  final title;
  final url;
  final thumbnailUrl;

  Photos(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl});

  @override
  String toString() {
    return 'Photos{albumId: $albumId, id: $id, title: $title, url: $url, thumbnailUrl: $thumbnailUrl}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Photos &&
          runtimeType == other.runtimeType &&
          albumId == other.albumId &&
          id == other.id &&
          title == other.title &&
          url == other.url &&
          thumbnailUrl == other.thumbnailUrl;

  @override
  int get hashCode =>
      albumId.hashCode ^
      id.hashCode ^
      title.hashCode ^
      url.hashCode ^
      thumbnailUrl.hashCode;

  Photos copyWith ({
    int? albumId,
    int? id,
    String? title,
    String? url,
    String? thumbnailUrl,
}) {
    return Photos(
      albumId: albumId ?? this.albumId,
      id: id ?? this.id,
      title: title ?? this.title,
      url: url ?? this.url,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl
    );
  }

  Map<String, dynamic> toJson() => {
    'albumId': albumId,
    'id': id,
    'title': title,
    'url': url,
    'thumbnailUrl': thumbnailUrl,
  };

  Photos.fromJson(Map<String, dynamic> json)
  : albumId = json['albumId'],
    id = json['id'],
    title = json['title'],
    url = json['url'],
    thumbnailUrl = json['thumbnailUrl'];
}
