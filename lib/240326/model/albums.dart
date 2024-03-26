class Albums {
  final int userId;
  final int id;
  final String title;

  const Albums(this.userId, this.id, this.title);

  Albums.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'];

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'id': id,
        'title': title,
      };

  Albums copyWith({
    int? userId,
    int? id,
    String? title,
  }) {
    return Albums(
      userId ?? this.userId,
      id ?? this.id,
      title ?? this.title,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Albums &&
          runtimeType == other.runtimeType &&
          userId == other.userId &&
          id == other.id &&
          title == other.title;

  @override
  int get hashCode => userId.hashCode ^ id.hashCode ^ title.hashCode;

  @override
  String toString() {
    return 'Albums{userId: $userId, id: $id, title: $title}';
  }
}
