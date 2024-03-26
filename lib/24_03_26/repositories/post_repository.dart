import 'package:learn_dart_together/24_03_26/model/post.dart';

abstract interface class PostRepository {
  Future<Post> getPost(int id);

  Future<List<Post>> getPosts(int page);
}
