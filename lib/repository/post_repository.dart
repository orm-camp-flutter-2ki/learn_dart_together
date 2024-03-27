import '../24_03_26/post.dart';

abstract interface class PostRepository {
  Future<Post> getPost(int id);

  Future<List<Post>> getPosts({int? page = 1, int? limit = 3});
}
