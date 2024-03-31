import '../model/post_model.dart';

abstract interface class PostRepository {
  Future<PostModel> getPost(int id);

  Future<List<PostModel>> getPostsAll();

  Future<List<PostModel>> getPosts({int page, int limit});

  Future<int> addPost(PostModel postModel);

  Future<PostModel> updatePost(PostModel postModel);

  Future<bool> deletePost(int postId);
}