import 'dart:convert';
import 'dart:io';

void main() async {
  List<dynamic> decode =
      jsonDecode(await File('lib/240323_study/posts.json').readAsString());

  List<Data> result = decode.map((e) => Data.fromJson(e)).toList();
  String encode = jsonEncode(result);
  final encodeFile =
      File('lib/240323_study/postsEncode.json').writeAsString(encode);
}

class Data {
  final int userId;
  final int id;
  final String title;
  final String body;

  Data(this.userId, this.id, this.title, this.body);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Data &&
          runtimeType == other.runtimeType &&
          userId == other.userId &&
          id == other.id &&
          title == other.title &&
          body == other.body;

  @override
  int get hashCode =>
      userId.hashCode ^ id.hashCode ^ title.hashCode ^ body.hashCode;

  @override
  String toString() {
    return 'Data{userId: $userId, id: $id, title: $title, body: $body}';
  }

  //toString을 재정의 하면 print문에서 암묵적으로 출력되게한다. Instance of Posts = > userID ~~ 샬라샬라
  //List안에 있으면 또 호출되게한다.
  Data.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        body = json['body'];

  Map<String, dynamic> toJson() =>
      {'userId': userId, 'id': id, 'title': title, 'body': body};

  Data copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return Data(
      userId ?? this.userId,
      id ?? this.id,
      title ?? this.title,
      body ?? this.body,
    );
  }
}
