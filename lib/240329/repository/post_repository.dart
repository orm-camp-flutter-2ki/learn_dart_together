import '../dto/post_dto.dart';
import '../model/post.dart';

abstract interface class PostRepository {
  Future<Post> getPost(int id);

  Future<List<Post>> getPostsAll();

  Future<List<Post>> getPosts({required int page, required int limit});

  Future<int> addPost(PostDto postDto);

  Future<Post> updatePost(PostDto postDto);

  Future<bool> deletePost(int postId);
}
