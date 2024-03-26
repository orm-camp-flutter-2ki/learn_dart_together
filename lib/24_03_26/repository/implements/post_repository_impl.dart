import 'package:learn_dart_together/24_03_26/data_source/post_api.dart';
import 'package:learn_dart_together/24_03_26/model/post.dart';
import 'package:learn_dart_together/24_03_26/repository/interface/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final PostApi _api = PostApi();

  @override
  Future<Post> getPost(int id) async {
    final postList = await _api.getPosts();
    final post = postList.where((e) => e.id == id);

    return post.first;
  }

  @override
  Future<List<Post>> getPosts() async {
    final postList = await _api.getPosts();

    return postList;
  }

  @override
  Future<List<Post>> getPostsFiltered(
      {required int page, required int limit}) async {
    final postList = await _api.getPosts();
    final int pageValid = page < 1 ? 1 : page;
    final int lastPoint = pageValid * limit;
    final int startPoint = lastPoint - limit;
    final List<Post> result = postList.sublist(startPoint, lastPoint);

    return result;
  }
}