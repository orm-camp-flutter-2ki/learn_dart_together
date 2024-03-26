import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/model/albums.dart';

class AlbumsRepository {
  Future<List<Albums>> getAlbums() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    final jsonList = jsonDecode(response.body) as List;

    return jsonList.map((e) => Albums.fromJson(e)).toList();
  }
}

void main() async {
  final albumsRepository = AlbumsRepository();
  final List<Albums> albums = await albumsRepository.getAlbums();
  print(albums);
}
