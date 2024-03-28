// 손 대지마
// DTO
// fromJson(), toJson()
class TodoDto {
  num? userId;
  num? id;
  String? title;
  bool? completed;

  TodoDto({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  TodoDto.fromJson(dynamic json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userId'] = userId;
    map['id'] = id;
    map['title'] = title;
    map['completed'] = completed;
    return map;
  }
}
