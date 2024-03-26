class Album {
  int userId;
  int id;
  String title;

  Album(this.userId,
      this.id,
      this.title,);

  Album copyWith({
    int? userId,
    int? id,
    String? title,
  }) {
    return Album(
      userId ?? this.userId,
      id ?? this.id,
      title ?? this.title,
    );
  }

  Album.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        userId = json['userid'],
        title = json['title'];

  Map<String, dynamic> toJson() =>
      {
        'id': id,
        'userId': userId,
        'title': title
      };

  @override
  String toString() {
    return 'Album{userId: $userId, id: $id, title: $title}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Album &&
              runtimeType == other.runtimeType &&
              userId == other.userId &&
              id == other.id &&
              title == other.title;

  @override
  int get hashCode => userId.hashCode ^ id.hashCode ^ title.hashCode;
}
