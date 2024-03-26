import 'dart:convert';

import 'package:learn_dart_together/240326/model/album.dart';
import 'package:learn_dart_together/240326/repository/album_repository.dart';
import 'package:learn_dart_together/240326/service/http_service.dart';

class AlbumRepositoryImpl implements AlbumRepository{

  @override
  Future<List<Album>> getAlbums() async {
    final result = await HttpService().callGet('https://jsonplaceholder.typicode.com/albums');
    final List jsonList = jsonDecode(result);

    return jsonList.map((e) => Album.fromJson(e)).toList();
  }

  @override
  Future<List<Album>> getAlbumsTop10() async {
    final result = await HttpService().callGet('https://jsonplaceholder.typicode.com/albums');
    final List jsonList = jsonDecode(result);
    final List top10List = jsonList.sublist(0, 10);

    return top10List.map((e) => Album.fromJson(e)).toList();
  }
}