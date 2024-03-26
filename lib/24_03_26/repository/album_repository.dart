import 'dart:math';

import 'package:learn_dart_together/24_03_26/model/dt_album.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

abstract interface class AlbumRepository {
  Future<List<Album>> getAlbumsTop10();

  Future<List<Album>> getAlbums();
}

class AlbumRepositoryImpl implements AlbumRepository {
  final baseUri = 'https://jsonplaceholder.typicode.com/albums';

  @override
  Future<List<Album>> getAlbums() async {
    final http.Response response = await http.get(Uri.parse(baseUri));

    List jsonList =
        (response.statusCode == 200) ? jsonDecode(response.body) : [];
    return jsonList.map((e) => Album.fromJson(e)).toList();
  }

  @override
  Future<List<Album>> getAlbumsTop10() async {
    final http.Response response =
        await http.get(Uri.parse(baseUri));

    List jsonList =
        (response.statusCode == 200) ? jsonDecode(response.body) : [];
    return jsonList.sublist(0, min(jsonList.length, 10)).map((e) => Album.fromJson(e)).toList();
  }
}
