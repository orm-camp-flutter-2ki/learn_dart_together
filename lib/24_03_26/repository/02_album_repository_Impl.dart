import 'dart:convert';

import 'package:learn_dart_together/24_03_26/model/02_album.dart';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_26/repository/02_album_repository.dart';

void main() async {
  final albumsTop10 = await AlbumRepositoryImpl().getAlbumsTop10();
  print(albumsTop10);
}

class AlbumRepositoryImpl implements AlbumRepository {
  @override
  Future<List<Album>> getAlbums() async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    List jsonList = jsonDecode(response.body);

    return jsonList.map((e) => Album.fromJson(e)).toList();
  }

  @override
  Future<List<Album>> getAlbumsTop10() async {
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    final List<dynamic> json = jsonDecode(response.body);

    // 상위 10개 항목을 Album 리스트로 반환
    List<Album> albums =
        json.take(10).map((item) => Album.fromJson(item)).toList();

    // Top10 받아오는 메서드 리턴
    return albums;
  }
}
