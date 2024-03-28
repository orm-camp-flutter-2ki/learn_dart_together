import 'package:learn_dart_together/240328/enum/enum_photo.dart';

class PhotoDto {
  num? id;
  PhotoEnum? type;
  String? url;
  String? caption;
  DateTime? createdAt;

  PhotoDto({
    this.id,
    this.type,
    this.url,
    this.caption,
    this.createdAt,
  });

  PhotoDto.fromJson(dynamic json) {
    id = json['id'] is String ? int.parse(json['id']) : json['id'];
    type = fun(json['type'] ?? 'unknown');
    url = json['url'];
    caption = json['caption'];
    createdAt = DateTime(
        int.parse(json['created_at'].toString().split('-')[0]),
        int.parse(json['created_at'].toString().split('-')[1]),
        int.parse(json['created_at'].toString().split('-')[2]),
        0,
        0,
        0);
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['type'] = type;
    map['url'] = url;
    map['caption'] = caption;
    map['created_at'] = createdAt;
    return map;
  }

  PhotoEnum fun(Object value) {
    if (value.toString() == 'Article') {
      return PhotoEnum.Article;
    } else if (value.toString() == 'Image') {
      return PhotoEnum.Image;
    } else if (value.toString() == 'Video') {
      return PhotoEnum.Video;
    }
    return PhotoEnum.unknown;
  }
}
