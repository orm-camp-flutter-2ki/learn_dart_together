class Photo {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Photo(
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  );

  //copyWith
  Photo copyWith({
    int? albumId,
    int? id,
    String? title,
    String? url,
    String? thumbnailUrl,
  }) {
    return Photo(
      albumId ?? this.albumId,
      id ?? this.id,
      title ?? this.title,
      url ?? this.url,
      thumbnailUrl ?? this.thumbnailUrl,
    );
  }

  Photo.fromJson(Map<String, dynamic> json)
      : albumId = json['albumId'],
        id = json['id'],
        title = json['title'],
        url = json['url'],
        thumbnailUrl = json['thumbnailUrl'];

  @override
  String toString() {
    return 'Photo{albumId: $albumId, id: $id, title: $title, url: $url, thumbnailUrl: $thumbnailUrl}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Photo &&
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
