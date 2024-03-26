import 'dart:convert';

import 'package:dart_cli_practice/240326/model/album.dart';
import 'package:http/http.dart' as http;

class AlbumApi {
  Future<List<Album>> getAlbums() async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    List jsonList = jsonDecode(response.body);

    return jsonList.map((e) => Album.fromJson(e)).toList();
  }
}
