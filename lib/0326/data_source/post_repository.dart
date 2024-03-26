import '../model/post.dart';

abstract interface class PostRepository {

  Future<Post> getPost(int id);
  Future<List<Post>> getPosts({int? page, int? limit});
  Future<List<Post>> getAllPosts();
}