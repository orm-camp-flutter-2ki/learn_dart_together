import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:learn_dart_together/240326/impl/album_repository_impl.dart';
import 'package:learn_dart_together/240326/model/album.dart';
import 'package:test/test.dart';

void main() {
  group('Album Test', () {
    final repository = AlbumRepositoryImpl();
    List json = jsonDecode(File('test/240326/resource/expected_album.json').readAsStringSync());
    final expected = json.map((e) => Album.fromJson(e)).toList();

    test('getAlbums() 첫 번째 Index 비교', () async {
      final albums = await repository.getAlbums();

      expect(albums[0] == expected[0], true);
    });

    test('getAlbumsTop10() List 비교', () async {
      final albums = await repository.getAlbumsTop10();

      expect(albums.equals(expected), true);
    });

    test('getAlbumsTop10() List length 확인', () async {
      final albums = await repository.getAlbumsTop10();

      expect(albums.length == 10, true);
    });
  });
}