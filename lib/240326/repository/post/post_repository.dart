import 'package:learn_dart_together/240326/repository/post/post.dart';

abstract interface class PostRepository {
  Future<Post> getPost(int id);
  Future<List<Post>> getPosts({int page, int limit});
}