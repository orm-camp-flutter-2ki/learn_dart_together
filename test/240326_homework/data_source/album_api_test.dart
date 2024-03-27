import 'package:collection/collection.dart';
import 'package:learn_dart_together/240326_homework/album_repository.dart';
import 'package:learn_dart_together/240326_homework/model/album.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import 'expected_results.dart';

void main() async {
  group('Repository', () {
    test('Album', () async {
      final repository = AlbumRepositoryImpl();
      final results = await repository.getAlbumsTop10();
      final expected = albumTop10.map((e) => Album.fromJson(e)).toList();

      expect(results.equals(expected), true);
    });
  });
}
