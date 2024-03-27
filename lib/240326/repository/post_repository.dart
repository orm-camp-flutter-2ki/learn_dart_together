import 'package:dart_cli_practice/240326/model/post.dart';

abstract interface class PostRepository {
  Future<Post> getPost(int id);

  Future<List<Post>> getPosts({int? page, int? limit});
}
