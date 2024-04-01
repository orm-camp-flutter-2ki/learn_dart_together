import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class HitDto {
  int? id;
  String? pageUrl;
  String? type;
  String? tags;
  String? previewUrl;
  int? previewWidth;
  int? previewHeight;
  String? webformatUrl;
  int? webformatWidth;
  int? webformatHeight;
  String? largeImageUrl;
  int? imageWidth;
  int? imageHeight;
  int? imageSize;
  int? views;
  int? downloads;
  int? collections;
  int? likes;
  int? comments;
  int? userId;
  String? user;
  String? userImageUrl;
  HitDto({
    this.id,
    this.pageUrl,
    this.type,
    this.tags,
    this.previewUrl,
    this.previewWidth,
    this.previewHeight,
    this.webformatUrl,
    this.webformatWidth,
    this.webformatHeight,
    this.largeImageUrl,
    this.imageWidth,
    this.imageHeight,
    this.imageSize,
    this.views,
    this.downloads,
    this.collections,
    this.likes,
    this.comments,
    this.userId,
    this.user,
    this.userImageUrl,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'pageUrl': pageUrl,
      'type': type,
      'tags': tags,
      'previewUrl': previewUrl,
      'previewWidth': previewWidth,
      'previewHeight': previewHeight,
      'webformatUrl': webformatUrl,
      'webformatWidth': webformatWidth,
      'webformatHeight': webformatHeight,
      'largeImageUrl': largeImageUrl,
      'imageWidth': imageWidth,
      'imageHeight': imageHeight,
      'imageSize': imageSize,
      'views': views,
      'downloads': downloads,
      'collections': collections,
      'likes': likes,
      'comments': comments,
      'userId': userId,
      'user': user,
      'userImageUrl': userImageUrl,
    };
  }

  factory HitDto.fromJson(Map<String, dynamic> map) {
    return HitDto(
      id: map['id'] != null ? map['id'] as int : null,
      pageUrl: map['pageUrl'] != null ? map['pageUrl'] as String : null,
      type: map['type'] != null ? map['type'] as String : null,
      tags: map['tags'] != null ? map['tags'] as String : null,
      previewUrl: map['previewUrl'] != null ? map['previewUrl'] as String : null,
      previewWidth: map['previewWidth'] != null ? map['previewWidth'] as int : null,
      previewHeight: map['previewHeight'] != null ? map['previewHeight'] as int : null,
      webformatUrl: map['webformatUrl'] != null ? map['webformatUrl'] as String : null,
      webformatWidth: map['webformatWidth'] != null ? map['webformatWidth'] as int : null,
      webformatHeight: map['webformatHeight'] != null ? map['webformatHeight'] as int : null,
      largeImageUrl: map['largeImageUrl'] != null ? map['largeImageUrl'] as String : null,
      imageWidth: map['imageWidth'] != null ? map['imageWidth'] as int : null,
      imageHeight: map['imageHeight'] != null ? map['imageHeight'] as int : null,
      imageSize: map['imageSize'] != null ? map['imageSize'] as int : null,
      views: map['views'] != null ? map['views'] as int : null,
      downloads: map['downloads'] != null ? map['downloads'] as int : null,
      collections: map['collections'] != null ? map['collections'] as int : null,
      likes: map['likes'] != null ? map['likes'] as int : null,
      comments: map['comments'] != null ? map['comments'] as int : null,
      userId: map['userId'] != null ? map['userId'] as int : null,
      user: map['user'] != null ? map['user'] as String : null,
      userImageUrl: map['userImageUrl'] != null ? map['userImageUrl'] as String : null,
    );
  }
}
