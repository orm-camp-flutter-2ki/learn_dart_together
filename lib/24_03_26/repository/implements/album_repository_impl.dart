import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_26/data_source/album_api.dart';
import 'package:learn_dart_together/24_03_26/model/album.dart';
import 'package:learn_dart_together/24_03_26/repository/interface/album_repository.dart';

class AlbumRepositoryImpl implements AlbumRepository {
  final AlbumApi _api = AlbumApi();

  @override
  Future<List<Album>> getAlbums() async {
    return await _api.getAlbums();
  }

  @override
  Future<List<Album>> getAlbumsTop10() async {
    final List<Album> wholeList = await _api.getAlbums();
    final List<Album> topTen = wholeList.sublist(0, 10);

    return topTen;
  }

}