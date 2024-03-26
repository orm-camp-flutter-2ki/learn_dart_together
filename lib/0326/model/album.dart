class Album {

  final int userId;
  final int id;
  final String title;

  const Album(this.userId, this.id, this.title);

  Album.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'];

  @override
  String toString() => 'Album{userId: $userId, id: $id, title: $title}';
}