// ignore_for_file: public_member_api_docs, sort_constructors_first

class Memo {
  final int id;
  final String content;

  Memo({
    required this.id,
    required this.content,
  });

  Memo copyWith({
    int? id,
    String? content,
  }) {
    return Memo(
      id: id ?? this.id,
      content: content ?? this.content,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'content': content,
    };
  }

  factory Memo.fromJson(Map<String, dynamic> map) {
    return Memo(
      id: map['id'] as int,
      content: map['content'] as String,
    );
  }

  @override
  String toString() => 'Memo(id: $id, content: $content)';

  @override
  bool operator ==(covariant Memo other) {
    if (identical(this, other)) return true;

    return other.id == id && other.content == content;
  }

  @override
  int get hashCode => id.hashCode ^ content.hashCode;
}
