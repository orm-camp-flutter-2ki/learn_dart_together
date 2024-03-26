import 'package:learn_dart_together/240326/data_source/post_api.dart';
import 'package:learn_dart_together/240326/model/post.dart';
import 'package:learn_dart_together/240326/repository/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  static const int minimumPage = 1;
  static const int minimumLimit = 3;
  PostApi postApi = PostApi();

  @override
  Future<Post> getPost(num id) async {
    final postData = await postApi.getPost(id);

    final result = Post(
      postData.userId,
      postData.id,
      postData.title,
      postData.body,
    );

    return result;
  }


  @override
  Future<List<Post>> getPosts() async {
    final postListData = await postApi.getPosts();

    return postListData;
  }

  @override
  Future<List<Post>> getPostPages(int page, int limit) async {
    final posts = await postApi.getPosts();

    int page = posts.length;
    int limit = posts.length;

    if( page < 0 || page >= posts.length) {
      page = minimumPage;
    }

    if( limit < 0 || limit >= posts.length ) {
      limit = minimumLimit;
    }

    int start = (page * limit) - limit;
    int end = start + limit;

    final pages = posts.sublist(start, end);

    return pages;
  }
}
