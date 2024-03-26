import 'package:learn_dart_together/orm_240326/albums.dart';
import 'package:learn_dart_together/orm_240326/comments.dart';

abstract interface class CommentsRepository {
  Future<List<Comments>> getComments(int postId);
}

abstract interface class AlbumsRepository {
  Future<List<Albums>> getAlbums();

  Future<List<Albums>> getAlbumsTop10();
}
