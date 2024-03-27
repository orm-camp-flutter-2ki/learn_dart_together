// ignore_for_file: public_member_api_docs, sort_constructors_first
class Albums {
  final int userId;
  final int id;
  final String title;
  Albums({
    required this.userId,
    required this.id,
    required this.title,
  });

  Albums copyWith({
    int? userId,
    int? id,
    String? title,
  }) {
    return Albums(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'userId': userId,
      'id': id,
      'title': title,
    };
  }

  factory Albums.fromJson(Map<String, dynamic> map) {
    return Albums(
      userId: map['userId'] as int,
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }

  @override
  String toString() => 'Albums(userId: $userId, id: $id, title: $title)';

  @override
  bool operator ==(covariant Albums other) {
    if (identical(this, other)) return true;

    return other.userId == userId && other.id == id && other.title == title;
  }

  @override
  int get hashCode => userId.hashCode ^ id.hashCode ^ title.hashCode;
}
