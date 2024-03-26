import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/0326/data_source/album_repository.dart';
import 'package:learn_dart_together/0326/model/album.dart';

class AlbumRepositoryImpl implements AlbumRepository {

  @override
  Future<List<Album>> getAlbums() async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    List<Album> albumList = [];

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body);
      albumList = jsonList.map((e) => Album.fromJson(e)).toList();
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return albumList;
  }

  @override
  Future<List<Album>> getAlbumsTop10() async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    List<Album> albumList = [];

    if (response.statusCode == 200) {
      List jsonList = jsonDecode(response.body);
      albumList = jsonList.where((e) => e['id'] <= 10).map((e) => Album.fromJson(e)).toList();
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return albumList;
  }
}