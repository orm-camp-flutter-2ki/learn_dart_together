import '../../model/post_model.dart';

abstract interface class PostRepository {
  Future<PostModel> getPost(int id);
  Future<List<PostModel>> getPosts();
  Future<List<PostModel>> getPagePosts(int page, int limit);
}