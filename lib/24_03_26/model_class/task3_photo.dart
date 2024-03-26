class Photo {
  final int albumId;
  final int id;
  final String url;
  final String thumbnailUrl;

  Photo(
      {required this.albumId,
      required this.id,
      required this.url,
      required this.thumbnailUrl});

  Photo.fromJson(Map<String, dynamic> json)
      : albumId = json['albumId'],
        id = json['id'],
        url = json['url'],
        thumbnailUrl = json['thumbnailUrl'];

  Map<String, dynamic> toJson() => {
        'albumId': albumId,
        'id': id,
        'url': url,
        'thumbnailUrl': thumbnailUrl,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Photo &&
          runtimeType == other.runtimeType &&
          albumId == other.albumId &&
          id == other.id &&
          url == other.url &&
          thumbnailUrl == other.thumbnailUrl;

  @override
  int get hashCode =>
      albumId.hashCode ^ id.hashCode ^ url.hashCode ^ thumbnailUrl.hashCode;

  @override
  String toString() {
    return 'Photo{albumId: $albumId, id: $id, url: $url, thumbnailUrl: $thumbnailUrl}';
  }

  Photo copyWith({
    int? albumId,
    int? id,
    String? url,
    String? thumbnailUrl,
  }) {
    return Photo(
      albumId: albumId ?? this.albumId,
      id: id ?? this.id,
      url: url ?? this.url,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
    );
  }
}
