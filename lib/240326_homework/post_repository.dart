import 'package:learn_dart_together/240323_study/posts.dart';

import 'api/posts_api.dart';

void main() async {
  final repo1 = await PostRepositoryImpl().getPost(3);
  print('repo1:$repo1');
  //final repo2 = await TodoRepositoryImpl().getPostsTop10ByPostName();
}

class PostRepositoryImpl implements PostRepository {
  final PostApi _api = PostApi();

  @override
  Future<Post> getPost(int id) async {
    List<Post> data = await _api.getPosts();
    List<Post> getPostById = data.where((element) => element.id == id).toList();
    return getPostById[0];
  }

// @override
// Future<List<Post>> getPosts({page = 1, limit = 3}) {
//   // TODO: implement getPosts
//   throw UnimplementedError();
// }
}

abstract interface class PostRepository {
  Future<Post> getPost(int id);

//Future<List<Post>> getPosts(page: 1, limit: 3);
}
