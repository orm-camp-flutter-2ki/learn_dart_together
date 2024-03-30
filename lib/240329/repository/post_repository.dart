import 'package:learn_dart_together/240329/Dto/post_dto.dart';
import 'package:learn_dart_together/240329/model/post/post.dart';

abstract interface class PostRepository {
  Future<Post> getPost(int id);
  Future<List<Post>> getPostsAll();
  Future<List<Post>> getPosts({int page, int limit});
  Future<int> addPost(PostDto postDto);
  Future<Post> updatePost(PostDto postDto);
  Future<bool> deletePost(int postId);
}
