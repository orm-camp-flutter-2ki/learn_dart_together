import '../model/post.dart';

abstract interface class PostRepository {
  Future<Post> getPost(num id);
  Future<List<Post>> getPosts();
  Future<List<Post>> getPostPages(int page, int limit);
}