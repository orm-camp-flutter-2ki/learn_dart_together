import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;

import '../model_class/p2_model_class.dart';

class AlbumApi {
  Future<List<Album>> getAlbumsApi() async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    List jsonList = jsonDecode(response.body);
    return jsonList.map((e) => Album.fromJson(e)).toList();
  }

  Future<List<Album>> getAlbumsApiTop10() async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    List jsonList = await jsonDecode(response.body);
    List<Album> filteredAlbum = jsonList
        .map((e) => Album.fromJson(e))
        .sorted((a, b) => a.id.compareTo(b.id))
        .sublist(0, 10);

    return filteredAlbum;
  }
}
