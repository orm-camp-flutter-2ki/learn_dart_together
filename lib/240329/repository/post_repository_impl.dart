import 'package:learn_dart_together/240329/Dto/post_dto.dart';
import 'package:learn_dart_together/240329/data_source/post_api.dart';
import 'package:learn_dart_together/240329/model/post/post.dart';
import 'package:learn_dart_together/240329/repository/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  // api 주입받아서 사용
  final PostApi _api;
  // 생성자
  PostRepositoryImpl({PostApi? api}) : _api = api ?? PostApi();

  @override
  Future<int> addPost(PostDto postDto) {
    // TODO: implement addPost
    throw UnimplementedError();
  }

  @override
  Future<bool> deletePost(int postId) {
    // TODO: implement deletePost
    throw UnimplementedError();
  }

  @override
  Future<Post> getPost(int id) {
    // TODO: implement getPost
    throw UnimplementedError();
  }

  @override
  Future<List<Post>> getPosts({int page = 1, int limit = 2}) {
    // TODO: implement getPosts
    throw UnimplementedError();
  }

  @override
  Future<List<Post>> getPostsAll() {
    // TODO: implement getPostsAll
    throw UnimplementedError();
  }

  @override
  Future<Post> updatePost(PostDto postDto) {
    // TODO: implement updatePost
    throw UnimplementedError();
  } // 교체하기 쉬움
}
