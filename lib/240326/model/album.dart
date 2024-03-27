class Album {
  final int userId;
  final int id;
  final String title;

//<editor-fold desc="Data Methods">
  const Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Album &&
          runtimeType == other.runtimeType &&
          userId == other.userId &&
          id == other.id &&
          title == other.title);

  @override
  int get hashCode => userId.hashCode ^ id.hashCode ^ title.hashCode;

  @override
  String toString() {
    return 'Album{ userId: $userId, id: $id, title: $title,}';
  }

  Album copyWith({
    int? userId,
    int? id,
    String? title,
  }) {
    return Album(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
    };
  }

  factory Album.fromJson(Map<String, dynamic> map) {
    return Album(
      userId: map['userId'] as int,
      id: map['id'] as int,
      title: map['title'] as String,
    );
  }

//</editor-fold>
}
