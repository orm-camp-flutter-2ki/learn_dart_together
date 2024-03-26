// ignore_for_file: public_member_api_docs, sort_constructors_first
class Album {
  int userId;
  int id;
  String title;

  Album({required this.userId, required this.id, required this.title});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'userId': userId,
      'id': id,
      'title': title,
    };
  }

  Album.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'];

  @override
  bool operator ==(covariant Album other) {
    if (identical(this, other)) return true;

    return other.userId == userId && other.id == id && other.title == title;
  }

  @override
  int get hashCode => userId.hashCode ^ id.hashCode ^ title.hashCode;

  Album copyWith({
    int? userId,
    int? id,
    String? title,
  }) {
    return Album(
        userId: userId ?? this.userId,
        id: id ?? this.id,
        title: title ?? this.title);
  }

  @override
  String toString() => 'Album(userId: $userId, id: $id, title: $title)';
}
