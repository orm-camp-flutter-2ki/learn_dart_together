class PhotoDto {
  String? id;
  String? type;
  String? title;
  String? url;
  String? caption;
  String? content;
  String? createdAt;

  PhotoDto({
      this.id, 
      this.type, 
      this.title, 
      this.url, 
      this.caption, 
      this.content, 
      this.createdAt,});

  PhotoDto.fromJson(dynamic json) {
    id = json['id'];
    type = json['type'];
    title = json['title'];
    url = json['url'];
    caption = json['caption'];
    content = json['content'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['type'] = type;
    map['title'] = title;
    map['url'] = url;
    map['caption'] = caption;
    map['content'] = content;
    map['created_at'] = createdAt;
    return map;
  }

}