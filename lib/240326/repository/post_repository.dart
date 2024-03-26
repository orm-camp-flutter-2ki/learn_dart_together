import 'package:learn_dart_together/240326/data_source/post_api.dart';

import '../model/post.dart';

abstract interface class PostRepository {
  Future<List<Post>> getPosts();

  Future<Post> getPost(int id);

  Future<List<Post>> getPostsPage(int page, int limit);
}

class PostRepositoryImpl implements PostRepository {
  final PostApi _api = PostApi();

  @override
  Future<Post> getPost(int id) {
    return _api.getPost(id);
  }

  @override
  Future<List<Post>> getPosts() {
    return _api.getPosts();
  }

  @override
  Future<List<Post>> getPostsPage(int page, int limit) async {
    final posts = await getPosts();
    // 알고리즘 영역,,, 모르겟음...
    final int pageValid = page < 1 ? 1 : page;
    // ex)
    // 1 page -> 1,2,3
    // 2 page -> 4,5,6
    // 3page? 3*3 -> 7,8,9
    final int lastPoint = pageValid * limit;
    //  9-3 = 6 이 되어 시작값이 된다!
    final int startPoint = lastPoint - limit;
    // 그러므로, 시작값과 마지막 값으로 계산하면, 각 page에 각 항목을 동일하게 뿌릴수 있다.
    final List<Post> result = posts.sublist(startPoint, lastPoint);

    return result;
  }
}
