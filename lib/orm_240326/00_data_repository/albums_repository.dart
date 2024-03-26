import 'package:learn_dart_together/orm_240326/albums.dart';

abstract interface class AlbumsRepository {
  Future<List<Albums>> getAlbums();

  Future<List<Albums>> getAlbumsTop10();
}
