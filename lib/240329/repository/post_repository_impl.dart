import 'package:learn_dart_together/240329/Dto/post_dto.dart';
import 'package:learn_dart_together/240329/data_source/post_api.dart';
import 'package:learn_dart_together/240329/data_source/post_api_impl.dart';
import 'package:learn_dart_together/240329/model/post/post.dart';
import 'package:learn_dart_together/240329/repository/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  // api 주입받아서 사용
  final PostApi _api;
  // 생성자
  PostRepositoryImpl({PostApi? api}) : _api = api ?? PostApiImpl();

  @override
  Future<int> addPost(PostDto postDto) {
    // POST
    throw UnimplementedError();
  }

  @override
  Future<bool> deletePost(int postId) {
    // DELETE
    throw UnimplementedError();
  }

  @override
  Future<Post> getPost(int id) {
    // GET
    throw UnimplementedError();
  }

  @override
  Future<List<Post>> getPosts({int page = 1, int limit = 2}) {
    // GET
    throw UnimplementedError();
  }

  @override
  Future<List<Post>> getPostsAll() {
    // GET
    throw UnimplementedError();
  }

  @override
  Future<Post> updatePost(PostDto postDto) {
    // PUT
    throw UnimplementedError();
  }
}
