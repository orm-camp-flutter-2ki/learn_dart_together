import 'package:learn_dart_together/240328/model/photo/photo.dart';

class PhotoDto {
  int? id;
  String? type;
  String? title;
  String? url;
  String? content;
  String? caption;
  String? createdAt;

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
    type = json['type'];
    title = json['title'];
    url = json['url'];
    content = json['content'];
    caption = json['caption'];
    createdAt = json['created_at'];
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
}