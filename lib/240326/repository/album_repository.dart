import 'package:dart_cli_practice/240326/model/album.dart';

abstract interface class AlbumRepository {
  Future<List<Album>> getAlbums();

  Future<List<Album>> getAlbumTop10();
}
