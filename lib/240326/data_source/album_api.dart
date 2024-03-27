import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/repository/album_repository.dart';

import '../vo/albums.dart';

class AlbumRepositoryImpl implements AlbumRepository {
  // imple에다가 해야함
  // interface 만들고
  // 20번째 장표참고
  // Datasource의 album API
  @override
  Future<dynamic> getConnect() async {
    // 질문1) 이것만 따로 빼는 방법
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    return response.body;
  }

  @override
  Future<List<Albums>> getAlbums() async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    // List<dynamic>
    List jsonList = jsonDecode(response.body);
    // List<dynamic> -> List<Albums>
    return jsonList.map((e) => Albums.fromJson(e)).toList();
  }

  @override
  Future<List<Albums>> getAlbumsTop10() async {
    final http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    // username 겹치는 거 없이 오름차순 정렬할 방법

    List jsonList = jsonDecode(response.body);

    List top10 = jsonList.sublist(0, 10);

    return top10.map((e) => Albums.fromJson(e)).toList();
  }
}
