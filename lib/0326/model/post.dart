class Post {

  final int userId;
  final int id;
  final String title;
  final String body;

  const Post(this.userId, this.id, this.title, this.body);

  Post.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        body = json['body'];

  @override
  String toString() {
    return 'Post{userId: $userId, id: $id, title: $title, body: $body}';
  }
}