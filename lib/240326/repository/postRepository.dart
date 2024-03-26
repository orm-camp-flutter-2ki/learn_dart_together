import '../datamodel/album.dart';
import '../datamodel/post.dart';

abstract interface class PostRepository {
  Future<Post> getPost(int id);
  Future<List<Post>> getPosts();
  Future<List<Post>> getPostsLimit(int page, int limit);

}