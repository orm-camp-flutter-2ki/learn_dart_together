import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_26/model/02_album.dart';
import 'package:learn_dart_together/24_03_26/repository/02_album_repository_Impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() async {
  test(' 과제 2. Repository 작성 연습 getAlbums()', () async {
    //given
    final repository = AlbumRepositoryImpl();
    final albums = await repository.getAlbums();

    //when
    final lengthOfAlbums = albums.length;

    //then
    expect(lengthOfAlbums == 100, true);
  });

  test('과제 2. Repository 작성 연습 getAlbumsTop10()', () async {
    //given
    final http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    final List<dynamic> json = jsonDecode(response.body);

    List<Album> albums =
        json.take(10).map((item) => Album.fromJson(item)).toList();

    //given
    final lengthOfAlbums = albums.length;

    //then
    expect(lengthOfAlbums == 10, true);
  });
}
