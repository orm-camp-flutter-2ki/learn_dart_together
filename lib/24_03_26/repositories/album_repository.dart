import 'package:learn_dart_together/24_03_26/model/album.dart';

abstract interface class AlbumRepository {
  Future<List<Album>> getAlbums();

  Future<List<Album>> getAlbumsTop10();
}
