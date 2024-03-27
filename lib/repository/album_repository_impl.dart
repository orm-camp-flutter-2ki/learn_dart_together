import 'dart:convert';

import 'package:learn_dart_together/24_03_26/album.dart';
import 'package:learn_dart_together/data_source/album_api.dart';

import 'album_repository.dart';

class AlbumRepositoryImpl implements AlbumRepository {
  final AlbumApi _api = AlbumApi();

  @override
  Future<List<Album>> getAlbums() async {
    final response = await _api.getAlbums();

    List jsonList = jsonDecode(response);

    return jsonList.map((e) => Album.fromJson(e)).toList();
  }

  @override
  Future<List<Album>> getAlbumsTop10() async {
    List<Album> albums = [];

    try {
      final response = await _api.getAlbums();
      final List jsonList = jsonDecode(response);
      albums = jsonList.map((e) => Album.fromJson(e)).take(10).toList();
    } catch (e) {
      print(e);
    }

    return albums;
  }
}
