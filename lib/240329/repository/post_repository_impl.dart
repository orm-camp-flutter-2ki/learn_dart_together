import 'package:learn_dart_together/240329/dto/post_dto.dart';
import 'package:learn_dart_together/240329/model/post.dart';

import '../data_source/post_api.dart';
import 'post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final _api = PostApi();

  @override
  Future<int> addPost(PostDto postDto) {
    // TODO: implement addPost
    throw UnimplementedError();
  }

  @override
  Future<bool> deletePost(int postId) async {
    return await _api.deletePost(postId);
  }

  @override
  Future<Post> getPost(int id) {
    return getPost(id);
  }

  @override
  Future<List<Post>> getPosts({required int page, required int limit}) async {
    return await _api.getPosts(page: page, limit: limit);
  }

  @override
  Future<List<Post>> getPostsAll() {
    return _api.getPostAll();
  }

  @override
  Future<Post> updatePost(PostDto postDto) {
    // TODO: implement updatePost
    throw UnimplementedError();
  }
}
