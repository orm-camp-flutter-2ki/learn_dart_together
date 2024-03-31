import 'package:learn_dart_together/24_03_31/model/post_model.dart';

abstract interface class PostApi {
  Future<PostModel> getPost(int id);

  Future<List<PostModel>> getPosts();

  Future<List<PostModel>> getPagePosts(int page, int limit);

  Future<int> addPost(PostModel postModel);

  Future<bool> deletePost(int postId);

  Future<PostModel> updatePost(PostModel postModel);
}
