import 'package:learn_dart_together/240326/datamodel/photo.dart';
import 'package:learn_dart_together/240326/datamodel/post.dart';
import 'package:learn_dart_together/240326/repository/photoRepository.dart';
import 'package:learn_dart_together/240326/repository/postRepository.dart';

import '../data_source/photo_api.dart';
import '../data_source/post_api.dart';

class PostRepositoryImpl implements PostRepository {

  @override
  Future<Post> getPost(int id) async {
    PostApi postApi = PostApi();
    final List<Post> Posts = await postApi.getPosts();
    List<Post> IdPost =
    Posts.where((e) => id.toString() == e.id).toList();
    return IdPost[0];
  }

  @override
  Future<List<Post>> getPosts() async {
    PostApi postApi = PostApi();
    return postApi.getPosts();
  }

  @override
  Future<List<Post>> getPostsLimit(int page, int limit) async {
    PostApi postApi = PostApi();
    final List<Post> Posts = await postApi.getPosts();
    if(page==0){
      page = 1;
    }
    int start = ((page - 1)* limit);
    int end = start+limit;
    if(start+limit > Posts.length ){
      end = Posts.length;
    }
    final List<Post> PostsLimit  = Posts.sublist(start , end);
    return PostsLimit;
  }
}
