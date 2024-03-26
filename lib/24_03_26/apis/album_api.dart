import 'dart:convert';

import 'package:learn_dart_together/24_03_25/http_proxy.dart';
import 'package:learn_dart_together/24_03_26/model/album.dart';

class AlbumApi {
  static const baseUrl = 'https://jsonplaceholder.typicode.com';
  final HttpProxy http;

  AlbumApi({required this.http});

  Future<List<Album>> getAlbums() async {
    final response = await http.get(Uri.parse('$baseUrl/albums'));
    return (jsonDecode(response.body) as List)
        .map((e) => Album.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<Album> getAlbum(int id) async {
    final response = await http.get(Uri.parse('$baseUrl/albums/$id'));
    return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  }
}
