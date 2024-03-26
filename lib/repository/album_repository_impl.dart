import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_26/album.dart';
import 'package:learn_dart_together/data_source/album_api.dart';

import 'album_repository.dart';

class AlbumRepositoryImpl implements AlbumRepository {
  final AlbumApi _api = AlbumApi();

  @override
  Future<List<Album>> getAlbums() async {
    http.Response response = _api.getAlbums() as http.Response;

    List jsonList = jsonDecode(response.body);

    return jsonList.map((e) => Album.fromJson(e)).toList();
  }

  @override
  Future<List<Album>> getAlbumsTop10() async {
    List<Album> albums = [];

    try {
      http.Response response = _api.getAlbums() as http.Response;
      final List jsonList = response.statusCode == 200 ? jsonDecode(response.body) : throw Exception();
      albums = jsonList.map((e) => Album.fromJson(e)).take(10).toList();
    } catch (e) {
      print(e);
    }

    return albums;
  }
}
