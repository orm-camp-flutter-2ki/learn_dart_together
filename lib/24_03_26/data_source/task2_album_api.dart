import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model_class/task2_album.dart';

class AlbumApi {
  Future<List<Album>> getAlbums() async {
    final http.Response res = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    List jsonList = jsonDecode(res.body) as List;
    return jsonList.map((e) => Album.fromJson(e)).toList();
  }

  Future<List<Album>> getAlbumsTop10() async {
    final http.Response res = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    List jsonList = jsonDecode(res.body) as List;
    return jsonList.map((e) => Album.fromJson(e)).toList().sublist(0, 10);
  }
}

Future<void> main() async {
  AlbumApi album1 = AlbumApi();
  final result1 = await album1.getAlbums();

  AlbumApi album2 = AlbumApi();
  final result2 = await album2.getAlbumsTop10();

  print(result1);
  print(result2);
}
