// {
// "title": "delectus aut autem",
// "completed": false
// }

class TodoDto {
  String? title;
  bool? completed;

  TodoDto({
    this.title,
    this.completed,
  });

  // json data -> dto 객체
  TodoDto.fromJson(dynamic json) {
    title = json['title'];
    completed = json['completed'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['completed'] = completed;
    return map;
  }
}
