import 'package:learn_dart_together/240328/model/photo/photo.dart';

class PhotoDto {
  int? id;
  PhotoType? type;
  String? title;
  String? url;
  String? content;
  String? caption;
  DateTime? createdAt;

  PhotoDto({
      this.id,
      this.type,
      this.title,
      this.url,
      this.content,
      this.caption,
      this.createdAt
  });

  PhotoDto.fromJson(dynamic json) {
    id = json['id'].runtimeType == String ? int.parse(json['id']): json['id'];
    type = _getPhotoType(json['type']);
    title = json['title'];
    url = json['url'];
    content = json['content'];
    caption = json['caption'];
    createdAt = _getCreatedDate(json['created_at']);
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['type'] = type;
    map['title'] = title;
    map['url'] = url;
    map['content'] = content;
    map['caption'] = caption;
    map['created_at'] = createdAt;
    return map;
  }

  PhotoType _getPhotoType(Object? type) {
    switch (type.toString().toLowerCase()) {
      case 'article':
        return PhotoType.Article;
      case 'image':
        return PhotoType.Image;
      case 'video':
        return PhotoType.Video;
      default:
        return PhotoType.unknown;
    }
  }

  DateTime _getCreatedDate(String? date) {
    if (date == null) return DateTime(0);

    return DateTime.parse(date);
  }
}