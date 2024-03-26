class Photos {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Photos(this.albumId, this.id, this.title, this.url, this.thumbnailUrl);

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

  Photos copyWith(
      {int? albumId,
      int? id,
      String? title,
      String? url,
      String? thumbnailUrl}) {
    return Photos(
      albumId ?? this.albumId,
      id ?? this.id,
      title ?? this.title,
      url ?? this.url,
      thumbnailUrl ?? this.thumbnailUrl,
    );
  }

  @override
  String toString() {
    return 'Photos{albumId: $albumId, id: $id, title: $title, url: $url, thumbailUrl: $thumbnailUrl}';
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
}
