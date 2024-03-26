import 'dart:convert';

import 'package:http/http.dart' as http;

import '../dataClass/album.dart';

class AlbumRepository {
  Future<List<Album>> getAlbums() async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    List jsonList = jsonDecode(response.body);

    return jsonList.map((e) => Album.fromJson(e)).toList(); //
  }

  Future<List<Album>> getAlbumsTop10() async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    List jsonList = jsonDecode(response.body);

    return jsonList
        .where((e) => e['id'] <= 10)
        .map((e) => Album.fromJson(e))
        .toList(); //
  }
}

void main() async {
  AlbumRepository test = AlbumRepository();
  final list = await test.getAlbumsTop10();
  print(list);
}
