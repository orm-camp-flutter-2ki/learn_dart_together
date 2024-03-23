import 'dart:convert';
import 'dart:io';

void main() async {
  List<dynamic> decode =
      jsonDecode(await File('lib/240323_study/comments.json').readAsString());
  List<Data> result = decode.map((e) => Data.fromJson(e)).toList();
  String encode = jsonEncode(result);
  final encodeFile =
      File('lib/240323_study/commentsEncode.json').writeAsString(encode);
}

class Data {
  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  Data(this.postId, this.id, this.name, this.email, this.body);

  Data.fromJson(Map<String, dynamic> json)
      : postId = json['postId'],
        id = json['id'],
        name = json['name'],
        email = json['email'],
        body = json['body'];

  Map<String, dynamic> toJson() => {
        'postId': postId,
        'id': id,
        'name': name,
        'email': email,
        'body': body,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Data &&
          runtimeType == other.runtimeType &&
          postId == other.postId &&
          id == other.id &&
          name == other.name &&
          email == other.email &&
          body == other.body;

  @override
  int get hashCode =>
      postId.hashCode ^
      id.hashCode ^
      name.hashCode ^
      email.hashCode ^
      body.hashCode;

  @override
  String toString() {
    return 'Data{postId: $postId, id: $id, name: $name, email: $email, body: $body}';
  }

  Data copyWith({
    int? postId,
    int? id,
    String? name,
    String? email,
    String? body,
  }) {
    return Data(
      postId ?? this.postId,
      id ?? this.id,
      name ?? this.name,
      email ?? this.email,
      body ?? this.body,
    );
  }
}
