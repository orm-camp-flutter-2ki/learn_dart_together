import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_26/model/album.dart';
import 'package:learn_dart_together/24_03_26/repository/album_repository.dart';

class AlbumRepositoryImpl implements AlbumRepository {
  final url = 'https://jsonplaceholder.typicode.com/albums';

  @override
  Future<List<Album>> getAlbums() async {
    final http.Response response = await http.get(Uri.parse(url));

    List<dynamic> jsonList = jsonDecode(response.body);

    return jsonList.map((e) => Album.fromJson(e)).toList();
  }

  @override
  Future<List<Album>> getAlbumsTop10() async {
    final http.Response response = await http.get(Uri.parse(url));

    List<dynamic> jsonList = jsonDecode(response.body);

    List<dynamic> topTen = jsonList.getRange(0, 10).toList();

    return topTen.map((e) => Album.fromJson(e)).toList();
  }
}
