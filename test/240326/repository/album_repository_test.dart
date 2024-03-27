import 'package:collection/collection.dart';
import 'package:learn_dart_together/240326/model/album.dart';
import 'package:learn_dart_together/240326/repository/album_repository.dart';
import 'package:test/test.dart';

import '../expected_results.dart';

void main() {
  group('Repository', () {
    test('album', () async {
      final repository = AlbumRepositoryImpl();
      final results = await repository.getAlbumsTop10();
      final expected = albumTop10.map((e) => Album.fromJson(e)).toList();

      expect(results.equals(expected), true);
    });
  });
}
