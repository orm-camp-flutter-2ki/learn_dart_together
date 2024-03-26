import 'package:learn_dart_together/240326/repository/album/album.dart';

abstract interface class AlbumRepository {
  Future<List<Album>> getAlbums();
  Future<List<Album>> getAlbumsTop10();
}