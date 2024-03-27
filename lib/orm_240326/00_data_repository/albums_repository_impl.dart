import 'package:collection/collection.dart';
import 'package:learn_dart_together/orm_240326/00_data_repository/albums_repository.dart';
import 'package:learn_dart_together/orm_240326/00_data_source/albums_api.dart';

import '../model/albums.dart';

class AlbumsRepositoryImpl implements AlbumsRepository {
  final AlbumsApi _api = AlbumsApi();

  @override
  Future<List<Albums>> getAlbums() async {
    final getalbums = await _api.getAlbums();
    return getalbums;
  }

  @override
  Future<List<Albums>> getAlbumsTop10() async {
    final List<Albums> results = await _api.getAlbumsTop10();
    List<Albums> albumstop10 =
        results.sorted((a, b) => a.id.compareTo(b.id)).sublist(0, 10);
    return albumstop10;
  }
}
