import 'package:learn_dart_together/240326/model/albums.dart';

import '../data_source/albums_api.dart';

abstract interface class AlbumsRepository {
  Future<List<Albums>> getAlbums();

  Future<List<Albums>> getAlbumsTop10();
}

class AlbumsRepositoryImpl implements AlbumsRepository {
  final AlbumsApi _api = AlbumsApi();

  @override
  Future<List<Albums>> getAlbums() async {
    // return await _api.getAlbums();
    List<Albums> data = await _api.getAlbums();
    return data;
  }

  @override
  Future<List<Albums>> getAlbumsTop10() async {
    List<Albums> data = await _api.getAlbums();
    return data.where((e) => e.id <= 10).toList();
  }
}

void main() async {
  List<Albums> albumsList = await AlbumsRepositoryImpl().getAlbums();
  List<Albums> albumsList10 = await AlbumsRepositoryImpl().getAlbumsTop10();
  // print(albumsList);
  print(albumsList10);
}
