import 'package:learn_dart_together/24_03_28/model/name_space/media_type.dart';

class ContentDto {
  ContentDto({
    this.id,
    this.type,
    this.title,
    this.content,
    this.createdAt,
  });

  ContentDto.fromJson(dynamic json) {
    id = json['id'].runtimeType == String ? num.parse(json['id']) : json['id'];
    type = json['type'];
    title = json['title'];
    content = json['content'];
    createdAt = json['“created_at”'];
  }

  num? id;
  String? type;
  String? title;
  String? content;
  String? createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['type'] = type;
    map['title'] = title;
    map['content'] = content;
    map['“created_at”'] = createdAt;
    return map;
  }
}
