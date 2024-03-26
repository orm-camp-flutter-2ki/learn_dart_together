import 'package:learn_dart_together/240326/model/album.dart';

abstract class AlbumRepository {
  Future<List<Album>> getAlbums();
  Future<List<Album>> getAlbumsTop10();
}