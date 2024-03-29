import 'package:learn_dart_together/240329/data_source/post_api_impl.dart';
import 'package:learn_dart_together/240329/mapper/post_mapper.dart';
import 'package:learn_dart_together/240329/model/post.dart';
import 'package:learn_dart_together/240329/repository/post_repository.dart';

import '../dto/post_dto.dart';

class PostRepositoryImpl implements PostRepository {
  static const int minimumPage = 1;
  static const int minimumLimit = 3;

  final PostApiImpl _api;

  PostRepositoryImpl({PostApiImpl? postApi}) : _api = postApi ?? PostApiImpl();

  @override
  Future<int> addPost(PostDto postDto) async {
    final result = await _api.addPost(postDto);

    return result;
  }

  @override
  Future<bool> deletePost(int postId) async {
    final result = await _api.deletePost(postId);

    return result;
  }

  @override
  Future<Post> getPost(int id) async {
    final PostDto getData = await _api.getPost(id);
    final Post postData = getData.toPost();

    return postData;
  }

  @override
  Future<List<Post>> getPosts({int? page, int? limit}) async {
    // 전체 길이를 limit 으로 나누고 page 갯수만큼 출력?
    final posts = await _api.getPostsAll();

    int page = posts.length;
    int limit = posts.length;

    if( page < 0 || page >= posts.length) {
      page = minimumPage;
    }

    if( limit < 0 || limit >= posts.length ) {
      limit = minimumLimit;
    }

    int start = (page * limit) - limit;
    int end = (start + limit) -1;

    final pages = posts.sublist(start, end);
    final result = pages.map((e) => e.toPost()).toList();

    return result;
  }

  @override
  Future<List<Post>> getPostsAll() async {
    final getAll = await _api.getPostsAll();
    final result = getAll.map((e) => e.toPost()).toList();

    return result;
  }

  @override
  Future<Post> updatePost(int id, PostDto postDto) async {
    final updateData = await _api.updatePost(id, postDto);
    final result = updateData.toPost();

    return result;
  }
}
