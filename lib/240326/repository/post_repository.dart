import 'package:learn_dart_together/240326/model/post.dart';

abstract interface class PostRepository {
  Future<Post> getPost(int id);
  Future<List<Post>> getPosts();
}