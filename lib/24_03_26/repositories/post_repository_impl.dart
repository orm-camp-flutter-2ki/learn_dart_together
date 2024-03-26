import 'package:learn_dart_together/24_03_26/apis/post_api.dart';
import 'package:learn_dart_together/24_03_26/model/post.dart';
import 'package:learn_dart_together/24_03_26/repositories/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  static const int defaultLimit = 3;
  final PostApi _postApi;

  PostRepositoryImpl(this._postApi);

  @override
  Future<Post> getPost(int id) async {
    return await _postApi.getPost(id);
  }

  @override
  Future<List<Post>> getPosts(int? page) async {
    List<Post> posts = await _postApi.getPosts();
    if (page == null) return posts;

    int offset = _getOffset(page, posts.length);
    int limit = _getLimit(offset, posts.length);

    return _getPostsSubList(offset, limit, posts);
  }

  int _getOffset(int page, int todosLength) {
    return (page * defaultLimit) - defaultLimit;
  }

  int _getLimit(int offset, int todosLength) {
    return offset + defaultLimit;
  }

  List<Post> _getPostsSubList(int offset, int limit, List<Post> posts) {
    List<Post> subListPosts;
    if (offset > posts.length) {
      subListPosts = [];
    } else if (limit < posts.length) {
      subListPosts = posts.sublist(offset, limit);
    } else {
      subListPosts = posts.sublist(offset);
    }

    return subListPosts;
  }
}
