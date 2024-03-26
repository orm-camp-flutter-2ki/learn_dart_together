import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/model/album.dart';

class AlbumApi {
  Future<List<Album>> getAlbums() async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => Album.fromJson(e)).toList();
  }

  Future<Album> getAlbum(int id) async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/$id'));
    final Map<String, dynamic> json = jsonDecode(response.body);
    return Album.fromJson(json);
  }
}
