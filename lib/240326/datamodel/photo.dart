class Photo {
 final String albumId;
 final String id;
 final String title;
 final String url;
 final String thumbnailUrl;

 Photo({required this.albumId, required this.id, required this.title, required this.url, required this.thumbnailUrl});

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

 Photo copyWith({
   String? albumId,
   String? id,
   String? title,
   String? url,
   String? thumbnailUrl,
 }) {
   return Photo(
     albumId: albumId ?? this.albumId,
     id: id ?? this.id,
     title: title ?? this.title,
     url: url ?? this.url,
     thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
   );
 }

 Map<String, dynamic> toJson() => {
   'albumId': albumId,
   'id': id,
   'title': title,
   'url': url,
   'thumbnailUrl': thumbnailUrl,
 };

 Photo.fromJson(Map<String, dynamic> json)
     : albumId = json['albumId'].toString(),
       id = json['id'].toString(),
       title = json['title'],
       url = json['url'],
       thumbnailUrl = json['thumbnailUrl'];
}