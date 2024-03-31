import 'package:learn_dart_together/24_03_28/http/http.dart';
import 'package:learn_dart_together/24_03_31/data_source/post_api.dart';
import 'package:learn_dart_together/24_03_31/data_source/post_api_impl.dart';
import 'package:learn_dart_together/24_03_31/model/post_model.dart';
import 'package:learn_dart_together/24_03_31/repository/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final PostApi _postApi;

  PostRepositoryImpl({required PostApi postApi}) : _postApi = postApi;

  @override
  Future<int> addPost(PostModel postModel) async {
    final addPost = await _postApi.addPost(postModel);
    return addPost;
  }

  @override
  Future<bool> deletePost(int postId) async {
    final deletePost = await _postApi.deletePost(postId);
    return deletePost;
  }

  @override
  Future<PostModel> getPost(int id) async {
    final post = await _postApi.getPost(id);
    return post;
  }

  @override
  Future<List<PostModel>> getPosts({int page = 1, int limit = 3}) async {
    final postList = await _postApi.getPagePosts(page, limit);
    return postList;
  }

  @override
  Future<List<PostModel>> getPostsAll() async {
    final postList = await _postApi.getPosts();
    return postList;
  }

  @override
  Future<PostModel> updatePost(PostModel postModel) async {
    final postUpdate = await _postApi.updatePost(postModel);
    return postUpdate;
  }
}

void main() async {
  final PostApi postApi = PostApiImpl(http: HttpImpl());
  final addPost = PostModel(userId: 101, id: 101, title: '최지원', body: '성공?');
  final updatePost = PostModel(userId: 1, id: 1, title: '최준호', body: '업데이트');
  final posts = await PostRepositoryImpl(postApi: postApi).getPosts();
  final post = await PostRepositoryImpl(postApi: postApi).getPost(1);
  final add = await PostRepositoryImpl(postApi: postApi).addPost(addPost);
  final delete = await PostRepositoryImpl(postApi: postApi).deletePost(1);
  final update = await PostRepositoryImpl(postApi: postApi).updatePost(updatePost);
  print(add);
  print(update);
}
