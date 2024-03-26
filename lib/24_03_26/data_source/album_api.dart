import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_26/model/album.dart';

class AlbumApi {
  Future<List<Album>> getAlbums() async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    final jsonList = jsonDecode(response.body) as List;
    final List<Album> albumList = jsonList.map((e) => Album.fromJson(e)).toList();
    return albumList;
  }
}